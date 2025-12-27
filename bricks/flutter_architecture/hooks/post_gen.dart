import 'dart:io';
import 'dart:convert';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  // Show numbered options
  logger.info('''
🔧 Select your project architecture:
1️⃣  Simple MVVM (with GetX)
2️⃣  Clean Architecture (with GetX)
''');

  // Read numeric choice
  stdout.write('Enter your choice (1-2): ');
  final input = stdin.readLineSync();

  final choice = int.tryParse(input ?? '');
  if (choice == null || choice < 1 || choice > 2) {
    logger.err('❌ Invalid selection. Please enter a number between 1 and 2.');
    exit(1);
  }

  String architecture;

  switch (choice) {
    case 1:
      architecture = 'simple_mvvm';
      break;
    case 2:
      architecture = 'clean_getx';
      break;
    default:
      architecture = 'simple_mvvm';
  }

  logger.info('Setting up $architecture architecture...');

  // Install GetX packages
  await _installGetXDependencies(logger);

  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');
  if (!libDir.existsSync()) {
    libDir.createSync(recursive: true);
  }

  switch (architecture) {
    case 'simple_mvvm':
      _createSimpleMVVM(libDir, logger);
      break;
    case 'clean_getx':
      _createCleanFeature(libDir, logger, useGetX: true);
      break;
  }

  logger.success('✅ $architecture architecture setup complete!');

  // Show next steps
  if (architecture == 'simple_mvvm') {
    logger.info('''
📦 GetX packages have been added to your pubspec.yaml.

Next steps:
1. Run 'flutter pub get' to install dependencies (if not already done)
2. Start implementing your features in lib/features/
3. Check lib/routes/ for navigation setup with GetX
4. Update your main.dart to use GetMaterialApp with AppRoutes.routes

Example main.dart:
```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter App',
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}
```

Folder Structure:
lib/
├── data/
│   ├── models/
│   │   ├── request_models/
│   │   └── response_models/
│   └── repositories/
├── features/
│   └── home/
│       ├── home_view.dart
│       ├── home_viewmodel.dart
│       └── home_binding.dart
└── routes/
''');
  } else {
    logger.info('''
📦 GetX packages have been added to your pubspec.yaml.

Next steps:
1. Run 'flutter pub get' to install dependencies (if not already done)
2. Start implementing your features in lib/features/
3. Check lib/routes/ for navigation setup
4. Each feature has its own Binding for dependency injection in presentation/dependencies/
5. Update your main.dart to use GetMaterialApp with AppRoutes.routes
''');
  }
}

// ------------------------------------------------------------------
// 🧩 Install GetX Dependencies
// ------------------------------------------------------------------
Future<void> _installGetXDependencies(Logger logger) async {
  logger.info('📦 Installing GetX packages...');

  final pubspecFile = File('pubspec.yaml');
  if (!pubspecFile.existsSync()) {
    logger.err('❌ pubspec.yaml not found in current directory.');
    return;
  }

  String content = await pubspecFile.readAsString();

  // Check if GetX packages are already in dependencies
  bool hasGet = false;

  // Look specifically in the dependencies section
  final lines = content.split('\n');
  bool inDependenciesSection = false;

  for (int i = 0; i < lines.length; i++) {
    final line = lines[i].trim();

    if (line == 'dependencies:') {
      inDependenciesSection = true;
      continue;
    }

    if (line == 'dev_dependencies:' ||
        (line.isNotEmpty &&
            !lines[i].startsWith('  ') &&
            !lines[i].startsWith('\t') &&
            inDependenciesSection)) {
      inDependenciesSection = false;
    }

    if (inDependenciesSection) {
      if (line.contains('get:')) hasGet = true;
    }
  }

  // List of packages to add
  final packagesToAdd = <String>[];
  if (!hasGet) packagesToAdd.add('  get: ^4.6.6');

  if (packagesToAdd.isEmpty) {
    logger.info('✅ All GetX packages are already installed');
    return;
  }

  logger.info('📦 Adding missing packages: ${packagesToAdd.length} package(s)');

  // Create backup
  final backupFile = File('pubspec.yaml.backup');
  await backupFile.writeAsString(content);
  logger.info('📋 Created backup: pubspec.yaml.backup');

  // Add packages directly after the last dependency
  final updatedLines = <String>[];
  inDependenciesSection = false;
  bool packagesAdded = false;

  for (int i = 0; i < lines.length; i++) {
    final line = lines[i];
    updatedLines.add(line);

    final trimmedLine = line.trim();

    if (trimmedLine == 'dependencies:') {
      inDependenciesSection = true;
      continue;
    }

    if (inDependenciesSection && !packagesAdded) {
      // Check if next line is dev_dependencies or another section
      if (i + 1 < lines.length) {
        final nextLine = lines[i + 1];
        final trimmedNextLine = nextLine.trim();

        if (trimmedNextLine == 'dev_dependencies:' ||
            (trimmedNextLine.isNotEmpty &&
                !nextLine.startsWith('  ') &&
                !nextLine.startsWith('\t'))) {
          // Add packages before this line
          for (final package in packagesToAdd) {
            updatedLines.add(package);
          }
          packagesAdded = true;
        }
      } else {
        // End of file, add packages here
        for (final package in packagesToAdd) {
          updatedLines.add(package);
        }
        packagesAdded = true;
      }
    }
  }

  final updatedContent = updatedLines.join('\n');
  await pubspecFile.writeAsString(updatedContent);
  logger.success('✅ Added packages to pubspec.yaml');

  // Show what was added
  for (final package in packagesToAdd) {
    logger.info('   + $package');
  }

  // Run flutter pub get
  logger.info('\n🔄 Running flutter pub get...');
  try {
    final process =
        await Process.start('flutter', ['pub', 'get'], runInShell: true);

    // Stream output in real-time
    process.stdout.transform(utf8.decoder).listen((data) {
      final output = data.trim();
      if (output.isNotEmpty) {
        logger.info(output);
      }
    });

    process.stderr.transform(utf8.decoder).listen((data) {
      final output = data.trim();
      if (output.isNotEmpty) {
        logger.err(output);
      }
    });

    final exitCode = await process.exitCode;
    if (exitCode == 0) {
      logger.success('✅ Dependencies installed successfully');
      // Delete backup
      if (backupFile.existsSync()) {
        backupFile.deleteSync();
      }
    } else {
      logger.err('❌ Failed to install dependencies');
      logger.warn('⚠️  Restoring original pubspec.yaml from backup...');
      await pubspecFile.writeAsString(content);
      logger.info('Please run "flutter pub get" manually.');
    }
  } catch (e) {
    logger.err('❌ Error running flutter pub get: $e');
    logger.warn('⚠️  Restoring original pubspec.yaml from backup...');
    await pubspecFile.writeAsString(content);
    logger.info('Please run "flutter pub get" manually.');
  }
}

// ------------------------------------------------------------------
// 🧩 SIMPLE MVVM (with GetX) - NEW STRUCTURE
// ------------------------------------------------------------------
void _createSimpleMVVM(Directory libDir, Logger logger) {
  // Create data folder structure
  final dataFolders = [
    'data',
    'data/models',
    'data/models/request_models',
    'data/models/response_models',
    'data/repositories',
  ];

  for (var folder in dataFolders) {
    Directory('${libDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/$folder');
  }

  // Create features/home folder
  final homeFolders = [
    'features',
    'features/home',
  ];

  for (var folder in homeFolders) {
    Directory('${libDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/$folder');
  }

  // Create routes folder
  Directory('${libDir.path}/routes').createSync(recursive: true);
  logger.success('📁 Created: lib/routes');

  // 🧱 HomeView (using GetView)
  File('${libDir.path}/features/home/home_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_viewmodel.dart';

class HomeView extends GetView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
           
          
          ],
        )),
      ),
    );
  }
}
''');
  logger.success('🧱 Created: lib/features/home/home_view.dart');

  // 🧱 HomeViewModel (extends GetxController)
  File('${libDir.path}/features/home/home_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';

class HomeViewModel extends GetxController {


  @override
  void onInit() {
    super.onInit();
    // Initialize data here
  }


  
  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
''');
  logger.success('🧱 Created: lib/features/home/home_viewmodel.dart');

  // 🧱 HomeBinding
  File('${libDir.path}/features/home/home_binding.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import 'home_viewmodel.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(
      () => HomeViewModel(),
    );
  }
}
''');
  logger.success('🧱 Created: lib/features/home/home_binding.dart');

  // 🧱 Create GetX route files
  _createGetXRouteFiles(libDir, logger);
}

// ------------------------------------------------------------------
// 🧩 CLEAN FEATURE-BASED (with GetX)
// ------------------------------------------------------------------
void _createCleanFeature(Directory libDir, Logger logger,
    {bool useGetX = false}) {
  final featureName = 'home';
  final featureDir = Directory('${libDir.path}/features/$featureName');
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

  // ✅ Create root structure
  for (var folder in [
    'features',
    'features/$featureName',
    'features/$featureName/data',
    'features/$featureName/domain',
    'features/$featureName/presentation',
  ]) {
    Directory('${libDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/$folder');
  }

  // ✅ Create data layer
  for (var folder in dataFolders) {
    Directory('${featureDir.path}/data/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/$featureName/data/$folder');
  }

  // ✅ Create domain layer
  for (var folder in domainFolders) {
    Directory('${featureDir.path}/domain/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/$featureName/domain/$folder');
  }

  // ✅ Create presentation layer
  for (var folder in presentationFolders) {
    Directory('${featureDir.path}/presentation/$folder')
        .createSync(recursive: true);
    logger
        .success('📁 Created: lib/features/$featureName/presentation/$folder');
  }

  // Create GetX files for clean architecture
  _createGetXFiles(featureDir, logger);

  // ✅ Create separate route files
  final className = 'Home';
  final fileName = 'home';
  _createSeparateRouteFiles(libDir, fileName, className,
      'features/$featureName/presentation/views', logger,
      useGetX: useGetX);
}

// ------------------------------------------------------------------
// 🧩 Create GetX-specific files for Clean Architecture
// ------------------------------------------------------------------
void _createGetXFiles(Directory featureDir, Logger logger) {
  // ✅ Example View File (using GetView)
  File('${featureDir.path}/presentation/views/home_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeView extends GetView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (controller.isLoading.value)
              const CircularProgressIndicator()
            else
              Text('Data: \${controller.data.value}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.onButtonPressed,
              child: Text('Taps: \${controller.tapCount}'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: controller.fetchData,
              child: const Text('Fetch Data'),
            ),
          ],
        )),
      ),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/home/presentation/views/home_view.dart');

  // ✅ ViewModel (GetX Controller) - CHANGED: Constructor with required named parameter
  File('${featureDir.path}/presentation/viewmodels/home_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '../../domain/repositories/home_repository.dart';

class HomeViewModel extends GetxController {
  final IHomeRepository repository;
  
  HomeViewModel({required this.repository});
  
  final tapCount = 0.obs;
  final RxString data = ''.obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void onButtonPressed() {
    tapCount.value++;
  }
  
  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      data.value = await repository.getData();
    } catch (e) {
      Get.snackbar(
        'Error', 
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
  
  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/home/presentation/viewmodels/home_viewmodel.dart');

  // ✅ Dependencies Binding
  File('${featureDir.path}/presentation/dependencies/home_binding.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '../../data/datasources/remote_home_datasource.dart';
import '../../data/repository_impl/home_repository_impl.dart';
import '../../domain/repositories/home_repository.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // DataSource
    Get.lazyPut<IRemoteHomeDataSource>(
      () => RemoteHomeDataSourceImpl(),
    );
    
    // Repository
    Get.lazyPut<IHomeRepository>(
      () => HomeRepositoryImpl(dataSource: Get.find()),
    );
    
    // ViewModel/Controller
    Get.lazyPut<HomeViewModel>(
      () => HomeViewModel(repository: Get.find()),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/home/presentation/dependencies/home_binding.dart');

  // ✅ DataSource with Interface + Implementation
  File('${featureDir.path}/data/datasources/remote_home_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''
/// Abstract data source defines the contract for remote home operations.
abstract interface class IRemoteHomeDataSource {
  Future<String> fetchData();
}

/// Concrete implementation of the remote home data source.
class RemoteHomeDataSourceImpl implements IRemoteHomeDataSource {
  @override
  Future<String> fetchData() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return 'Data fetched successfully';
    } catch (error) {
      throw Exception('Fetch error: \${error.toString()}');
    }
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/home/data/datasources/remote_home_datasource.dart');

  // ✅ Example Entity
  File('${featureDir.path}/domain/entities/home_entity.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class HomeEntity {
  final String id;
  final String title;

  HomeEntity({required this.id, required this.title});
}
''');
  logger.success(
      '🧱 Created: lib/features/home/domain/entities/home_entity.dart');

  // ✅ Example Repository Interface - CHANGED: Added "I" prefix
  File('${featureDir.path}/domain/repositories/home_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class IHomeRepository {
  Future<String> getData();
}
''');
  logger.success(
      '🧱 Created: lib/features/home/domain/repositories/home_repository.dart');

  // ✅ Example Repository Implementation - CHANGED: Constructor with required named parameter
  File('${featureDir.path}/data/repository_impl/home_repository_impl.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
        '''import '../../domain/repositories/home_repository.dart';
import '../datasources/remote_home_datasource.dart';

class HomeRepositoryImpl implements IHomeRepository {
  final IRemoteHomeDataSource dataSource;

  HomeRepositoryImpl({required this.dataSource});

  @override
  Future<String> getData() {
    return dataSource.fetchData();
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/home/data/repository_impl/home_repository_impl.dart');
}

// ------------------------------------------------------------------
// 🧩 Create GetX Route Files for Simple MVVM
// ------------------------------------------------------------------
void _createGetXRouteFiles(Directory libDir, Logger logger) {
  final routesDir = Directory('${libDir.path}/routes');
  if (!routesDir.existsSync()) {
    routesDir.createSync(recursive: true);
  }

  // ✅ 1. Create route_paths.dart
  final pathsFile = File('${routesDir.path}/route_paths.dart');
  pathsFile.writeAsStringSync('''class RoutePaths {
  static const String home = '/home';
}
''');
  logger.success('🧭 Created: lib/routes/route_paths.dart');

  // ✅ 2. Create route_names.dart
  final namesFile = File('${routesDir.path}/route_names.dart');
  namesFile.writeAsStringSync('''class RouteNames {
  static const String home = 'home';
}
''');
  logger.success('🧭 Created: lib/routes/route_names.dart');

  // ✅ 3. Create routes.dart (GetX routing) - REMOVED unused import
  final routesFile = File('${routesDir.path}/routes.dart');
  routesFile.writeAsStringSync('''import 'package:get/get.dart';
import 'route_paths.dart';
import '../features/home/home_view.dart';
import '../features/home/home_binding.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: RoutePaths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
  
  static const String initialRoute = RoutePaths.home;
}
''');
  logger.success('🧭 Created: lib/routes/routes.dart');
}

// ------------------------------------------------------------------
// 🧩 SHARED: Create Separate Route Files (Paths, Names, Routes)
// ------------------------------------------------------------------
void _createSeparateRouteFiles(Directory libDir, String fileName,
    String className, String viewPath, Logger logger,
    {bool useGetX = false}) {
  final routesDir = Directory('${libDir.path}/routes');
  if (!routesDir.existsSync()) {
    routesDir.createSync(recursive: true);
  }

  // ✅ 1. Create route_paths.dart
  final pathsFile = File('${routesDir.path}/route_paths.dart');
  pathsFile.writeAsStringSync('''class RoutePaths {
  static const String $fileName = '/$fileName';
}
''');
  logger.success('🧭 Created: lib/routes/route_paths.dart');

  // ✅ 2. Create route_names.dart
  final namesFile = File('${routesDir.path}/route_names.dart');
  namesFile.writeAsStringSync('''class RouteNames {
  static const String $fileName = '$fileName';
}
''');
  logger.success('🧭 Created: lib/routes/route_names.dart');

  // ✅ 3. Create routes.dart (GetX routing) - REMOVED unused import
  final routesFile = File('${routesDir.path}/routes.dart');
  routesFile.writeAsStringSync('''import 'package:get/get.dart';
import 'route_paths.dart';
import '../$viewPath/${fileName}_view.dart';
import '../$viewPath/../dependencies/${fileName}_binding.dart';

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
  logger.success('🧭 Created: lib/routes/routes.dart');
}
