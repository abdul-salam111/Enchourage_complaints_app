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

  // 🧠 Step 2: Ask or detect architecture type
  logger.info('\nSelect your architecture:');
  logger.info('  1️⃣  MVC');
  logger.info('  2️⃣  MVVM');
  logger.info('  3️⃣  Clean Feature-Based');
  final archChoice = logger.prompt('Enter number (1/2/3):');

  String architecture;
  switch (archChoice) {
    case '1':
      architecture = 'MVC';
      break;
    case '2':
      architecture = 'MVVM';
      break;
    case '3':
      architecture = 'Clean';
      break;
    default:
      architecture = _detectArchitecture(libDir);
      logger.warn('⚠ Invalid selection, auto-detected: $architecture');
  }

  logger.info('\n🧠 Using architecture: $architecture');
  logger.info('Creating feature/page: $pageName\n');

  // 🧱 Step 3: Create structure based on architecture
  if (architecture == 'MVC') {
    _createView(currentDir, className, fileName, false, logger);
    _createController(currentDir, className, fileName, logger);
    _updateRoutes(currentDir, className, fileName, logger);
  } else if (architecture == 'MVVM') {
    _createView(currentDir, className, fileName, true, logger);
    _createViewModel(currentDir, className, fileName, logger);
    _updateRoutes(currentDir, className, fileName, logger);
  } else {
    _createCleanFeature(libDir, className, fileName, logger);
  }

  logger.success('\n✅ $className ($architecture) setup complete!');
}

String _detectArchitecture(Directory libDir) {
  if (Directory('${libDir.path}/viewmodels').existsSync()) return 'MVVM';
  if (Directory('${libDir.path}/controllers').existsSync()) return 'MVC';
  if (Directory('${libDir.path}/features').existsSync()) return 'Clean';
  return 'MVC';
}

/// ---------------------------------------------------------------------------
/// 🧩 CLEAN FEATURE-BASED ARCHITECTURE
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
  final presentationFolders = ['views', 'widgets', 'blocs'];

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

  // ✅ Datasource Interface & Implementation
  File('${featureDir.path}/data/datasources/${fileName}_remote_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class I${className}RemoteDataSource {
  Future<bool> login(String email, String password);
}

class ${className}RemoteDataSourceImpl implements I${className}RemoteDataSource {
  @override
  Future<bool> login(String email, String password) async {
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
  final String email;
  final String password;
  ${className}Entity({required this.email, required this.password});
}
''');
  logger.success('🧱 Entity created.');

  // ✅ Repository Interface
  File('${featureDir.path}/domain/repositories/${fileName}_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class ${className}Repository {
  Future<bool> signIn(String email, String password);
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
  Future<bool> signIn(String email, String password) async {
    return dataSource.login(email, password);
  }
}
''');
  logger.success('🧱 Repository implementation created.');

  // ✅ Routes
  final routesFile = File('${libDir.path}/routes/routes.dart');
  routesFile
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:go_router/go_router.dart';
import '../features/$fileName/presentation/views/${fileName}_view.dart';

class AppRoutes {
  static const String $fileName = '/$fileName';

  static final GoRouter router = GoRouter(
    initialLocation: $fileName,
    routes: [
      GoRoute(
        path: $fileName,
        name: '$fileName',
        builder: (context, state) => const ${className}View(),
      ),
    ],
  );
}
''');
  logger.success('🧭 Routes file created.');
}

/// ---------------------------------------------------------------------------
/// 🧩 MVC & MVVM HELPERS
/// ---------------------------------------------------------------------------

void _createView(
    Directory currentDir, String className, String fileName, bool isMVVM, Logger logger) {
  final logicType = isMVVM ? 'ViewModel' : 'Controller';
  final logicFolder = isMVVM ? 'viewmodels' : 'controllers';
  final file = File('${currentDir.path}/lib/views/${fileName}_view.dart');
  file.createSync(recursive: true);
  file.writeAsStringSync('''import 'package:flutter/material.dart';
import '../$logicFolder/${fileName}_${logicType.toLowerCase()}.dart';

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

void _createController(
    Directory currentDir, String className, String fileName, Logger logger) {
  final file = File('${currentDir.path}/lib/controllers/${fileName}_controller.dart');
  file.createSync(recursive: true);
  file.writeAsStringSync('''import 'package:flutter/material.dart';
class ${className}Controller {
  void onActionPressed() => debugPrint('$className Controller Action');
}
''');
  logger.success('🧱 Controller created.');
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

void _updateRoutes(
    Directory currentDir, String className, String fileName, Logger logger) {
  final routesFile = File('${currentDir.path}/lib/routes/routes.dart');
  routesFile.createSync(recursive: true);
  routesFile.writeAsStringSync('''import 'package:go_router/go_router.dart';
import '../views/${fileName}_view.dart';

class AppRoutes {
  static const String $fileName = '/$fileName';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: $fileName,
        name: '$fileName',
        builder: (context, state) => const ${className}View(),
      ),
    ],
  );
}
''');
  logger.success('🧭 Routes updated.');
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
