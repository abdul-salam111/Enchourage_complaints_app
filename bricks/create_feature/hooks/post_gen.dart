import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  // 🧠 Step 1: Ask for feature or page name
  final pageName =
      context.vars['page_name'] ?? logger.prompt('Enter feature/page name:');
  final className = _toPascalCase(pageName);
  final fileName = _toSnakeCase(pageName);

  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');

  // 🧠 Step 2: Auto-detect architecture type
  final architecture = _detectArchitecture(libDir);

  if (architecture == 'Unknown') {
    logger.err(
        '❌ Could not detect architecture. Please run setup_architecture first.');
    exit(1);
  }

  logger.info('\n🧠 Detected architecture: $architecture');
  logger.info('Creating feature/page: $pageName\n');

  // 🧱 Step 3: Create structure based on architecture
  if (architecture == 'SimpleMVVM') {
    _createSimpleMVVMFeature(libDir, className, fileName, logger);
  } else if (architecture == 'CleanMVVM') {
    _createCleanFeature(libDir, className, fileName, logger);
  }

  logger.success('\n✅ $className ($architecture) setup complete!');
}

String _detectArchitecture(Directory libDir) {
  // Check for feature-based Clean Architecture
  if (Directory('${libDir.path}/features').existsSync()) {
    final features = Directory('${libDir.path}/features').listSync();
    if (features.isNotEmpty) {
      final firstFeature = features.first;
      if (firstFeature is Directory) {
        // Check if it has data/domain/presentation structure (Clean Architecture)
        if (Directory('${firstFeature.path}/data').existsSync() &&
            Directory('${firstFeature.path}/domain').existsSync() &&
            Directory('${firstFeature.path}/presentation').existsSync()) {
          return 'CleanMVVM';
        }

        // Check for Simple MVVM structure (view, viewmodel, binding in same folder)
        final files = firstFeature.listSync();
        bool hasView = files.any((f) => f.path.endsWith('_view.dart'));
        bool hasViewModel =
            files.any((f) => f.path.endsWith('_viewmodel.dart'));
        bool hasBinding = files.any((f) => f.path.endsWith('_binding.dart'));

        if (hasView && hasViewModel && hasBinding) {
          return 'SimpleMVVM';
        }
      }
    }
  }

  // Check for data folder (Simple MVVM indicator)
  if (Directory('${libDir.path}/data').existsSync()) {
    return 'SimpleMVVM';
  }

  return 'Unknown';
}

/// ---------------------------------------------------------------------------
/// 🧩 SIMPLE MVVM (NEW STRUCTURE)
/// ---------------------------------------------------------------------------

void _createSimpleMVVMFeature(
  Directory libDir,
  String className,
  String fileName,
  Logger logger,
) {
  final featureDir = Directory('${libDir.path}/features/$fileName');

  // ✅ Create feature folder
  featureDir.createSync(recursive: true);
  logger.success('📁 Created: lib/features/$fileName');

  // 🧱 View (using GetView)
  File('${featureDir.path}/${fileName}_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '${fileName}_viewmodel.dart';

class ${className}View extends GetView<${className}ViewModel> {
  const ${className}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('$className')),
      body: Center(
        child: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Taps: \${controller.tapCount.value}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.onActionPressed,
              child: const Text('Tap Me'),
            ),
          ],
        )),
      ),
    );
  }
}
''');
  logger.success('🧱 Created: lib/features/$fileName/${fileName}_view.dart');

  // 🧱 ViewModel (extends GetxController)
  File('${featureDir.path}/${fileName}_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';

class ${className}ViewModel extends GetxController {
  final tapCount = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize data here
  }

  void onActionPressed() {
    tapCount.value++;
  }
  
  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
''');
  logger
      .success('🧱 Created: lib/features/$fileName/${fileName}_viewmodel.dart');

  // 🧱 Binding
  File('${featureDir.path}/${fileName}_binding.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '${fileName}_viewmodel.dart';

class ${className}Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<${className}ViewModel>(
      () => ${className}ViewModel(),
    );
  }
}
''');
  logger.success('🧱 Created: lib/features/$fileName/${fileName}_binding.dart');

  // ✅ Add route (GetX)
  _createSeparateRouteFiles(
    libDir,
    fileName,
    className,
    'features/$fileName',
    logger,
    useGetX: true,
  );
}

/// ---------------------------------------------------------------------------
/// 🧩 CLEAN FEATURE-BASED ARCHITECTURE (MVVM with GetX)
/// ---------------------------------------------------------------------------

void _createCleanFeature(
  Directory libDir,
  String className,
  String fileName,
  Logger logger,
) {
  final featureDir = Directory('${libDir.path}/features/$fileName');

  final dataFolders = ['datasources', 'repository_impl', 'models'];
  final domainFolders = ['repositories', 'usecases', 'entities'];
  final presentationFolders = [
    'views',
    'widgets',
    'viewmodels',
    'dependencies'
  ];

  // ✅ Create base structure
  for (final folder in [
    'features',
    'features/$fileName',
    'features/$fileName/data',
    'features/$fileName/domain',
    'features/$fileName/presentation',
  ]) {
    Directory('${libDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/$folder');
  }

  // ✅ Subfolders
  for (final folder in dataFolders) {
    Directory('${featureDir.path}/data/$folder').createSync(recursive: true);
  }
  for (final folder in domainFolders) {
    Directory('${featureDir.path}/domain/$folder').createSync(recursive: true);
  }
  for (final folder in presentationFolders) {
    Directory('${featureDir.path}/presentation/$folder')
        .createSync(recursive: true);
  }

  // ✅ View (using GetView for GetX)
  File('${featureDir.path}/presentation/views/${fileName}_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/${fileName}_viewmodel.dart';

class ${className}View extends GetView<${className}ViewModel> {
  const ${className}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('$className')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Tap count: \${controller.tapCount.value}')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.onActionPressed,
              child: const Text('Tap Me'),
            ),
          ],
        ),
      ),
    );
  }
}
''');
  logger.success('🧱 View created.');

  // ✅ ViewModel (GetX Controller) - CHANGED: Constructor with required named parameter
  File('${featureDir.path}/presentation/viewmodels/${fileName}_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '../../domain/repositories/${fileName}_repository.dart';

class ${className}ViewModel extends GetxController {
  final I${className}Repository repository;
  
  ${className}ViewModel({required this.repository});
  
  final tapCount = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize here
  }

  void onActionPressed() {
    tapCount.value++;
  }
  
  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
''');
  logger.success('🧱 ViewModel created.');

  // ✅ Dependencies Binding (GetX) - CHANGED: Named parameters in Get.find() calls
  File('${featureDir.path}/presentation/dependencies/${fileName}_binding.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '../../data/datasources/${fileName}_remote_datasource.dart';
import '../../data/repository_impl/${fileName}_repository_impl.dart';
import '../../domain/repositories/${fileName}_repository.dart';
import '../viewmodels/${fileName}_viewmodel.dart';

class ${className}Binding extends Bindings {
  @override
  void dependencies() {
    // DataSource
    Get.lazyPut<I${className}RemoteDataSource>(
      () => ${className}RemoteDataSourceImpl(),
    );
    
    // Repository
    Get.lazyPut<I${className}Repository>(
      () => ${className}RepositoryImpl(dataSource: Get.find()),
    );
    
    // ViewModel/Controller
    Get.lazyPut<${className}ViewModel>(
      () => ${className}ViewModel(repository: Get.find()),
    );
  }
}
''');
  logger.success('🧱 Binding created.');

  // ✅ Datasource Interface & Implementation
  File('${featureDir.path}/data/datasources/${fileName}_remote_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
        '''abstract interface class I${className}RemoteDataSource {
  Future<bool> performAction(String param1, String param2);
}

class ${className}RemoteDataSourceImpl implements I${className}RemoteDataSource {
  @override
  Future<bool> performAction(String param1, String param2) async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}
''');
  logger.success('🧱 Datasource created.');

  // ✅ Entity
  File('${featureDir.path}/domain/entities/${fileName}_entity.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class ${className}Entity {
  final String id;
  final String name;
  
  ${className}Entity({required this.id, required this.name});
}
''');
  logger.success('🧱 Entity created.');

  // ✅ Repository Interface - CHANGED: Added "I" prefix
  File('${featureDir.path}/domain/repositories/${fileName}_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class I${className}Repository {
  Future<bool> performAction(String param1, String param2);
}
''');
  logger.success('🧱 Repository interface created.');

  // ✅ Repository Implementation - CHANGED: Constructor with required named parameter
  File(
      '${featureDir.path}/data/repository_impl/${fileName}_repository_impl.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
        '''import '../../domain/repositories/${fileName}_repository.dart';
import '../datasources/${fileName}_remote_datasource.dart';

class ${className}RepositoryImpl implements I${className}Repository {
  final I${className}RemoteDataSource dataSource;

  ${className}RepositoryImpl({required this.dataSource});

  @override
  Future<bool> performAction(String param1, String param2) async {
    return dataSource.performAction(param1, param2);
  }
}
''');
  logger.success('🧱 Repository implementation created.');

  // ✅ Add route using the same approach as flutter_architecture
  _createSeparateRouteFiles(
    libDir,
    fileName,
    className,
    'features/$fileName/presentation/views',
    logger,
    useGetX: true,
  );
}

/// ---------------------------------------------------------------------------
/// 🧩 SHARED: Create Separate Route Files (Paths, Names, Routes)
/// ---------------------------------------------------------------------------

void _createSeparateRouteFiles(Directory libDir, String fileName,
    String className, String viewPath, Logger logger,
    {bool useGetX = false}) {
  final routesDir = Directory('${libDir.path}/routes');
  if (!routesDir.existsSync()) {
    routesDir.createSync(recursive: true);
  }

  final routesFile = File('${routesDir.path}/routes.dart');
  final pathsFile = File('${routesDir.path}/route_paths.dart');
  final namesFile = File('${routesDir.path}/route_names.dart');

  // ✅ 1. Update or create route_paths.dart
  _updateRoutePaths(pathsFile, fileName, logger);

  // ✅ 2. Update or create route_names.dart
  _updateRouteNames(namesFile, fileName, logger);

  // ✅ 3. Update or create routes.dart (GetX)
  _updateRoutesFileGetX(routesFile, className, fileName, viewPath, logger);
}

void _updateRoutePaths(File pathsFile, String fileName, Logger logger) {
  if (!pathsFile.existsSync()) {
    pathsFile.createSync(recursive: true);
    pathsFile.writeAsStringSync('''class RoutePaths {
  static const String $fileName = '/$fileName';
}
''');
    logger.success('🧭 Created: lib/routes/route_paths.dart');
    return;
  }

  String content = pathsFile.readAsStringSync();

  // Check if path already exists
  if (content.contains("static const String $fileName")) {
    logger.warn('⚠️  Path for $fileName already exists in route_paths.dart');
    return;
  }

  // Add new path before the closing brace
  final closingBrace = content.lastIndexOf('}');
  final newPath = "  static const String $fileName = '/$fileName';\n";
  content = content.substring(0, closingBrace) +
      newPath +
      content.substring(closingBrace);

  pathsFile.writeAsStringSync(content);
  logger.success('🧭 Added $fileName path to route_paths.dart');
}

void _updateRouteNames(File namesFile, String fileName, Logger logger) {
  if (!namesFile.existsSync()) {
    namesFile.createSync(recursive: true);
    namesFile.writeAsStringSync('''class RouteNames {
  static const String $fileName = '$fileName';
}
''');
    logger.success('🧭 Created: lib/routes/route_names.dart');
    return;
  }

  String content = namesFile.readAsStringSync();

  // Check if name already exists
  if (content.contains("static const String $fileName")) {
    logger.warn('⚠️  Name for $fileName already exists in route_names.dart');
    return;
  }

  // Add new name before the closing brace
  final closingBrace = content.lastIndexOf('}');
  final newName = "  static const String $fileName = '$fileName';\n";
  content = content.substring(0, closingBrace) +
      newName +
      content.substring(closingBrace);

  namesFile.writeAsStringSync(content);
  logger.success('🧭 Added $fileName name to route_names.dart');
}

void _updateRoutesFileGetX(
  File routesFile,
  String className,
  String fileName,
  String viewPath,
  Logger logger,
) {
  // Determine correct import paths based on architecture
  String viewImportPath;
  String bindingImportPath;

  if (viewPath.contains('presentation/views')) {
    // Clean Architecture
    viewImportPath = "../$viewPath/${fileName}_view.dart";
    bindingImportPath = "../$viewPath/../dependencies/${fileName}_binding.dart";
  } else {
    // Simple MVVM
    viewImportPath = "../$viewPath/${fileName}_view.dart";
    bindingImportPath = "../$viewPath/${fileName}_binding.dart";
  }

  // CHANGED: Removed unused import 'route_names.dart'
  if (!routesFile.existsSync()) {
    routesFile.createSync(recursive: true);
    routesFile.writeAsStringSync('''import 'package:get/get.dart';
import 'route_paths.dart';
import '$viewImportPath';
import '$bindingImportPath';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: RoutePaths.$fileName,
      page: () => const ${className}View(),
      binding: ${className}Binding(),
    ),
  ];
  
  static const String initialRoute = RoutePaths.$fileName;
}
''');
    logger.success('🧭 Created: lib/routes/routes.dart (GetX)');
    return;
  }

  logger.info('📝 Updating existing routes.dart file (GetX)...');
  String content = routesFile.readAsStringSync();

  // Check if route already exists
  if (content.contains("name: RoutePaths.$fileName,") ||
      content.contains('${className}View()')) {
    logger.warn('⚠️  Route for $fileName already exists in routes.dart');
    return;
  }

  // Add imports
  logger.info('📦 Adding imports...');
  content = _addImportIfMissing(content, "import '$viewImportPath';");
  content = _addImportIfMissing(content, "import '$bindingImportPath';");
  logger.info('✅ Imports processed');

  // Find the routes list
  logger.info('🔍 Searching for routes list...');
  final routesListRegex = RegExp(
      r'static\s+final\s+List<GetPage>\s+routes\s*=\s*\[',
      multiLine: true);
  final routesMatch = routesListRegex.firstMatch(content);

  if (routesMatch == null) {
    logger.err('❌ Could not find routes list in routes.dart');
    return;
  }

  logger.info('✅ Found routes list at position ${routesMatch.start}');
  final routesListContentStart = routesMatch.end;

  // Find the matching closing bracket
  int bracketCount = 1;
  int routesListEnd = routesListContentStart;

  for (int i = routesListContentStart; i < content.length; i++) {
    if (content[i] == '[') {
      bracketCount++;
    } else if (content[i] == ']') {
      bracketCount--;
      if (bracketCount == 0) {
        routesListEnd = i;
        break;
      }
    }
  }

  if (routesListEnd <= routesListContentStart) {
    logger.err('❌ Could not find end of routes list');
    return;
  }

  logger.info('✅ Found routes list end at position $routesListEnd');

  // Extract current routes content
  final currentRoutesContent =
      content.substring(routesListContentStart, routesListEnd).trim();

  // Create new GetPage
  final newGetPage = '''
    GetPage(
      name: RoutePaths.$fileName,
      page: () => const ${className}View(),
      binding: ${className}Binding(),
    ),''';

  // Determine where to insert
  String newRoutesContent;

  if (currentRoutesContent.isEmpty) {
    logger.info('📝 Routes list is empty, adding first route');
    newRoutesContent = newGetPage;
  } else {
    logger.info('📝 Adding route to existing routes list');
    String trimmedContent = currentRoutesContent;

    // Find last non-whitespace character
    int lastCharIndex = -1;
    for (int i = trimmedContent.length - 1; i >= 0; i--) {
      if (trimmedContent[i].trim().isNotEmpty) {
        lastCharIndex = i;
        break;
      }
    }

    if (lastCharIndex >= 0 && trimmedContent[lastCharIndex] != ',') {
      logger.info('📝 Adding comma to last route');
      trimmedContent =
          '${trimmedContent.substring(0, lastCharIndex + 1)},${trimmedContent.substring(lastCharIndex + 1)}';
    }

    newRoutesContent = '$trimmedContent\n$newGetPage';
  }

  // Reconstruct content
  final newContent = content.substring(0, routesListContentStart) +
      newRoutesContent +
      content.substring(routesListEnd);

  routesFile.writeAsStringSync(newContent);
  logger.success('🧭 Added $className route to routes.dart (GetX)');
}

String _addImportIfMissing(String content, String importStatement) {
  if (!content.contains(importStatement)) {
    final importMatches = RegExp(r"import '.*';").allMatches(content);
    if (importMatches.isNotEmpty) {
      final lastImport = importMatches.last;
      final insertPosition = lastImport.end;
      return '${content.substring(0, insertPosition)}\n$importStatement${content.substring(insertPosition)}';
    }
  }
  return content;
}

/// ---------------------------------------------------------------------------
/// 🧩 Naming helpers
/// ---------------------------------------------------------------------------

String _toPascalCase(String text) {
  return text.split('_').map((word) {
    if (word.isEmpty) return '';
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join('');
}

String _toSnakeCase(String text) {
  return text
      .replaceAllMapped(RegExp(r'[A-Z]'), (match) => '_${match.group(0)}')
      .toLowerCase()
      .replaceAll(RegExp(r'^_'), '');
}
