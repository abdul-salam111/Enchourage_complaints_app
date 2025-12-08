import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  // 🧠 Step 1: Ask for feature or page name
  final pageName = context.vars['page_name'] ?? logger.prompt('Enter feature/page name:');
  final className = _toPascalCase(pageName);
  final fileName = _toSnakeCase(pageName);

  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');

  // 🧠 Step 2: Auto-detect architecture type
  final architecture = _detectArchitecture(libDir);
  
  if (architecture == 'Unknown') {
    logger.err('❌ Could not detect architecture. Please run setup_architecture first.');
    exit(1);
  }

  logger.info('\n🧠 Detected architecture: $architecture');
  logger.info('Creating feature/page: $pageName\n');

  // 🧱 Step 3: Create structure based on architecture
  if (architecture == 'SimpleMVVM') {
    _createView(currentDir, className, fileName, logger);
    _createViewModel(currentDir, className, fileName, logger);
    _addRouteToExisting(currentDir, className, fileName, 'views', logger);
  } else if (architecture == 'CleanBloc') {
    _createCleanFeature(libDir, className, fileName, logger, useBloc: true);
  } else if (architecture == 'CleanMVVM') {
    _createCleanFeature(libDir, className, fileName, logger, useBloc: false);
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
          
          // Check if it uses Bloc or MVVM
          if (Directory('${firstFeature.path}/presentation/blocs').existsSync()) {
            return 'CleanBloc';
          } else if (Directory('${firstFeature.path}/presentation/viewmodels').existsSync()) {
            return 'CleanMVVM';
          }
          
          // Default to CleanBloc if presentation layer exists but no specific pattern detected
          return 'CleanBloc';
        }
      }
    }
    // Features folder exists but empty, default to CleanBloc
    return 'CleanBloc';
  }
  
  // Check for simple MVVM (viewmodels in root)
  if (Directory('${libDir.path}/viewmodels').existsSync()) {
    return 'SimpleMVVM';
  }
  
  return 'Unknown';
}

/// ---------------------------------------------------------------------------
/// 🧩 CLEAN FEATURE-BASED ARCHITECTURE (Bloc or MVVM)
/// ---------------------------------------------------------------------------

void _createCleanFeature(
  Directory libDir,
  String className,
  String fileName,
  Logger logger,
  {bool useBloc = true}
) {
  final featureDir = Directory('${libDir.path}/features/$fileName');

  final dataFolders = ['datasources', 'repository_impl', 'models'];
  final domainFolders = ['repositories', 'usecases', 'entities'];
  final presentationFolders = useBloc 
      ? ['views', 'widgets', 'blocs']
      : ['views', 'widgets', 'viewmodels'];

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
    Directory('${featureDir.path}/presentation/$folder').createSync(recursive: true);
  }

  // ✅ View
  File('${featureDir.path}/presentation/views/${fileName}_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';

class ${className}View extends StatelessWidget {
  const ${className}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('$className')),
      body: const Center(child: Text('$className View')),
    );
  }
}
''');
  logger.success('🧱 View created.');

  // ✅ ViewModel (if MVVM)
  if (!useBloc) {
    File('${featureDir.path}/presentation/viewmodels/${fileName}_viewmodel.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync('''import 'package:flutter/material.dart';

class ${className}ViewModel {
  void onActionPressed() {
    debugPrint('$className ViewModel Action');
  }
  
  void dispose() {
    // Clean up resources
  }
}
''');
    logger.success('🧱 ViewModel created.');
  }

  // ✅ Datasource Interface & Implementation
  File('${featureDir.path}/data/datasources/${fileName}_remote_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class I${className}RemoteDataSource {
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

  // ✅ Repository Interface
  File('${featureDir.path}/domain/repositories/${fileName}_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class ${className}Repository {
  Future<bool> performAction(String param1, String param2);
}
''');
  logger.success('🧱 Repository interface created.');

  // ✅ Repository Implementation
  File('${featureDir.path}/data/repository_impl/${fileName}_repository_impl.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../domain/repositories/${fileName}_repository.dart';
import '../datasources/${fileName}_remote_datasource.dart';

class ${className}RepositoryImpl implements ${className}Repository {
  final I${className}RemoteDataSource dataSource;

  ${className}RepositoryImpl(this.dataSource);

  @override
  Future<bool> performAction(String param1, String param2) async {
    return dataSource.performAction(param1, param2);
  }
}
''');
  logger.success('🧱 Repository implementation created.');

  // ✅ Add route to existing routes file
  _addRouteToExisting(
    Directory('${libDir.path}/..'),
    className,
    fileName,
    'features/$fileName/presentation/views',
    logger,
  );
}

/// ---------------------------------------------------------------------------
/// 🧩 SIMPLE MVVM HELPERS
/// ---------------------------------------------------------------------------

void _createView(
    Directory currentDir, String className, String fileName, Logger logger) {
  final file = File('${currentDir.path}/lib/views/${fileName}_view.dart');
  file.createSync(recursive: true);
  file.writeAsStringSync('''import 'package:flutter/material.dart';
import '../viewmodels/${fileName}_viewmodel.dart';

class ${className}View extends StatelessWidget {
  const ${className}View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('$className')),
      body: const Center(child: Text('$className View')),
    );
  }
}
''');
  logger.success('🧱 Created: lib/views/${fileName}_view.dart');
}

void _createViewModel(
    Directory currentDir, String className, String fileName, Logger logger) {
  final file = File('${currentDir.path}/lib/viewmodels/${fileName}_viewmodel.dart');
  file.createSync(recursive: true);
  file.writeAsStringSync('''import 'package:flutter/foundation.dart';

class ${className}ViewModel extends ChangeNotifier {
  void onActionPressed() => debugPrint('$className ViewModel Action');
}
''');
  logger.success('🧱 ViewModel created.');
}

/// ---------------------------------------------------------------------------
/// 🧩 SMART ROUTE APPENDING WITH SEPARATE FILES
/// ---------------------------------------------------------------------------

void _addRouteToExisting(
  Directory currentDir,
  String className,
  String fileName,
  String viewPath,
  Logger logger,
) {
  final routesDir = Directory('${currentDir.path}/lib/routes');
  if (!routesDir.existsSync()) {
    routesDir.createSync(recursive: true);
  }

  final routesFile = File('${routesDir.path}/routes.dart');
  final pathsFile = File('${routesDir.path}/route_paths.dart');
  final namesFile = File('${routesDir.path}/route_names.dart');

  // ✅ Create or update route_paths.dart
  _updateRoutePaths(pathsFile, fileName, logger);

  // ✅ Create or update route_names.dart
  _updateRouteNames(namesFile, fileName, logger);

  // ✅ Create or update routes.dart
  _updateRoutesFile(routesFile, className, fileName, viewPath, logger);
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
  content = content.substring(0, closingBrace) + newPath + content.substring(closingBrace);

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
  content = content.substring(0, closingBrace) + newName + content.substring(closingBrace);

  namesFile.writeAsStringSync(content);
  logger.success('🧭 Added $fileName name to route_names.dart');
}

void _updateRoutesFile(
  File routesFile,
  String className,
  String fileName,
  String viewPath,
  Logger logger,
) {
  if (!routesFile.existsSync()) {
    routesFile.createSync(recursive: true);
    routesFile.writeAsStringSync('''import 'package:go_router/go_router.dart';
import 'route_paths.dart';
import 'route_names.dart';
import '../$viewPath/${fileName}_view.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.$fileName,
    routes: [
      GoRoute(
        path: RoutePaths.$fileName,
        name: RouteNames.$fileName,
        builder: (context, state) => const ${className}View(),
      ),
    ],
  );
}
''');
    logger.success('🧭 Created: lib/routes/routes.dart');
    return;
  }

  String content = routesFile.readAsStringSync();

  // Check if route already exists
  if (content.contains('RoutePaths.$fileName') || content.contains('${className}View()')) {
    logger.warn('⚠️  Route for $fileName already exists in routes.dart');
    return;
  }

  // Add import for the new view
  final importStatement = "import '../$viewPath/${fileName}_view.dart';";
  if (!content.contains(importStatement)) {
    final lastImportIndex = content.lastIndexOf("import '");
    if (lastImportIndex != -1) {
      final endOfLastImport = content.indexOf(';', lastImportIndex) + 1;
      content = content.substring(0, endOfLastImport) +
          '\n$importStatement' +
          content.substring(endOfLastImport);
    }
  }

  // Add new GoRoute
  final newRoute = '''      GoRoute(
        path: RoutePaths.$fileName,
        name: RouteNames.$fileName,
        builder: (context, state) => const ${className}View(),
      ),''';

  final routesMatch = RegExp(r'routes:\s*\[').firstMatch(content);
  if (routesMatch != null) {
    final routesStart = routesMatch.end;
    final routesEnd = content.indexOf(']', routesStart);
    final beforeClosing = content.lastIndexOf(')', routesEnd);
    
    if (beforeClosing != -1) {
      final insertPosition = content.indexOf(',', beforeClosing) + 1;
      content = content.substring(0, insertPosition) +
          '\n$newRoute' +
          content.substring(insertPosition);
    }
  }

  routesFile.writeAsStringSync(content);
  logger.success('🧭 Added $className route to routes.dart');
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