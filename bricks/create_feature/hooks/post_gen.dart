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
  _createCleanFeature(libDir, className, fileName, logger);

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
      }
    }
  }

  return 'Unknown';
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

  final dataFolders = [
    'datasources',
    'repository_impl',
    'models',
    'models/request_models',
    'models/response_models'
  ];
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

  // ✅ Create data layer
  for (final folder in dataFolders) {
    Directory('${featureDir.path}/data/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/$fileName/data/$folder');
  }

  // ✅ Create domain layer
  for (final folder in domainFolders) {
    Directory('${featureDir.path}/domain/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/$fileName/domain/$folder');
  }

  // ✅ Create presentation layer
  for (final folder in presentationFolders) {
    Directory('${featureDir.path}/presentation/$folder')
        .createSync(recursive: true);
    logger.success('📁 Created: lib/features/$fileName/presentation/$folder');
  }

  // ✅ Create GetX files for clean architecture
  _createGetXFiles(featureDir, className, fileName, logger);

  // ✅ Create separate route files
  _createSeparateRouteFiles(
    libDir,
    fileName,
    className,
    'features/$fileName/presentation/views',
    logger,
  );
}

/// ---------------------------------------------------------------------------
/// 🧩 Create GetX-specific files for Clean Architecture
/// ---------------------------------------------------------------------------

void _createGetXFiles(
  Directory featureDir,
  String className,
  String fileName,
  Logger logger,
) {
  // ✅ View File (using GetView)
  File('${featureDir.path}/presentation/views/${fileName}_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import '../../../../app_exports.dart';

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
            Obx(() => Text('Count: \${controller.count.value}')),
            const SizedBox(height: 20),
            Obx(
              () => CustomButton(
                text: "Perform Action",
                onPressed: controller.performAction,
                isLoading: controller.isLoading.value,
              ),
            ),
          ],
        ),
      ).paddingAll(16),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/presentation/views/${fileName}_view.dart');

  // ✅ ViewModel (GetX Controller) - Using UseCase
  File('${featureDir.path}/presentation/viewmodels/${fileName}_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import '../../../../app_exports.dart';

class ${className}ViewModel extends GetxController {
  final ${className}Usecase ${_toCamelCase(fileName)}Usecase;

  ${className}ViewModel({required this.${_toCamelCase(fileName)}Usecase});

  final RxInt count = 0.obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize here
  }

  Future<void> performAction() async {
    await executeUseCase(
      useCase: () => ${_toCamelCase(fileName)}Usecase.call(
        ${className}Params(
          param1: 'value1',
          param2: 'value2',
        ),
      ),
      loadingState: isLoading,
      onSuccess: (result) {
        count.value++;
        // Handle success
      },
    );
  }

  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/presentation/viewmodels/${fileName}_viewmodel.dart');

  // ✅ Dependencies Binding - Including UseCase
  File('${featureDir.path}/presentation/dependencies/${fileName}_binding.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '../../data/datasources/remote_${fileName}_datasource.dart';
import '../../data/repository_impl/${fileName}_repository_impl.dart';
import '../../domain/repositories/${fileName}_repository.dart';
import '../../domain/usecases/${fileName}_usecase.dart';
import '../viewmodels/${fileName}_viewmodel.dart';

class ${className}Binding extends Bindings {
  @override
  void dependencies() {
    // DataSource - pass DioHelper instance
    Get.lazyPut<IRemote${className}DataSource>(
      () => Remote${className}DataSourceImpl(dioHelper: Get.find()),
    );
    
    // Repository
    Get.lazyPut<I${className}Repository>(
      () => ${className}RepositoryImpl(dataSource: Get.find()),
    );
    
    // UseCase
    Get.lazyPut<${className}Usecase>(
      () => ${className}Usecase(repository: Get.find()),
    );
    
    // ViewModel/Controller
    Get.lazyPut<${className}ViewModel>(
      () => ${className}ViewModel(${_toCamelCase(fileName)}Usecase: Get.find()),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/presentation/dependencies/${fileName}_binding.dart');

  // ✅ DataSource with Interface + Implementation extending BaseRemoteDataSource
  File('${featureDir.path}/data/datasources/remote_${fileName}_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

abstract interface class IRemote${className}DataSource {
  Future<${className}Response> performAction({required ${className}Params params});
}

class Remote${className}DataSourceImpl extends BaseRemoteDatasource
    implements IRemote${className}DataSource {
  Remote${className}DataSourceImpl({required super.dioHelper});

  @override
  Future<${className}Response> performAction({
    required ${className}Params params,
  }) async {
    return post(
      url: ApiEndPoints.${_toCamelCase(fileName)},
      parser: (json) => ${className}Response.fromJson(json),
      body: params.toJson(),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/data/datasources/remote_${fileName}_datasource.dart');

  // ✅ Entity
  File('${featureDir.path}/domain/entities/${fileName}_entity.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class ${className}Entity {
  final String id;
  final String name;

  ${className}Entity({required this.id, required this.name});
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/domain/entities/${fileName}_entity.dart');

  // ✅ UseCase with dynamic params and return type
  File('${featureDir.path}/domain/usecases/${fileName}_usecase.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class ${className}Usecase implements Usecase<${className}Response, ${className}Params> {
  final I${className}Repository repository;

  ${className}Usecase({required this.repository});

  @override
  Future<Either<AppException, ${className}Response>> call(${className}Params params) {
    return repository.performAction(params: params);
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/domain/usecases/${fileName}_usecase.dart');

  // ✅ Repository Interface
  File('${featureDir.path}/domain/repositories/${fileName}_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

abstract interface class I${className}Repository {
  Future<Either<AppException, ${className}Response>> performAction({
    required ${className}Params params,
  });
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/domain/repositories/${fileName}_repository.dart');

  // ✅ Repository Implementation extending BaseRepository
  File(
      '${featureDir.path}/data/repository_impl/${fileName}_repository_impl.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class ${className}RepositoryImpl extends BaseRepository implements I${className}Repository {
  final IRemote${className}DataSource dataSource;

  ${className}RepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, ${className}Response>> performAction({
    required ${className}Params params,
  }) {
    return execute(
      call: () => dataSource.performAction(params: params),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/data/repository_impl/${fileName}_repository_impl.dart');

  // ✅ Request Model (Params)
  File('${featureDir.path}/data/models/request_models/${fileName}_params.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class ${className}Params {
  final String param1;
  final String param2;

  ${className}Params({
    required this.param1,
    required this.param2,
  });

  Map<String, dynamic> toJson() {
    return {
      'param1': param1,
      'param2': param2,
    };
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/data/models/request_models/${fileName}_params.dart');

  // ✅ Response Model
  File(
      '${featureDir.path}/data/models/response_models/${fileName}_response.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class ${className}Response {
  final String id;
  final String message;
  final bool success;

  ${className}Response({
    required this.id,
    required this.message,
    required this.success,
  });

  factory ${className}Response.fromJson(Map<String, dynamic> json) {
    return ${className}Response(
      id: json['id'] ?? '',
      message: json['message'] ?? '',
      success: json['success'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'message': message,
      'success': success,
    };
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/data/models/response_models/${fileName}_response.dart');
}

/// ---------------------------------------------------------------------------
/// 🧩 SHARED: Create Separate Route Files (Paths, Names, Routes)
/// ---------------------------------------------------------------------------

void _createSeparateRouteFiles(
  Directory libDir,
  String fileName,
  String className,
  String viewPath,
  Logger logger,
) {
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
  // Determine correct import paths for Clean Architecture
  String viewImportPath = "../$viewPath/${fileName}_view.dart";
  String bindingImportPath =
      "../$viewPath/../dependencies/${fileName}_binding.dart";

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

String _toCamelCase(String text) {
  final words = text.split('_');
  if (words.isEmpty) return '';
  return words.first.toLowerCase() +
      words.skip(1).map((word) {
        if (word.isEmpty) return '';
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }).join('');
}
