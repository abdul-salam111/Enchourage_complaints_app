import 'dart:io';
import 'dart:convert';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  logger.info('🔧 Setting up Clean Architecture with GetX...');
  await _installGetXDependencies(logger);
  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');
  if (!libDir.existsSync()) {
    libDir.createSync(recursive: true);
  }

  _createCleanFeature(libDir, logger);

  logger.success('✅ Clean Architecture setup complete!');

  logger.info('''
📦 GetX packages have been added to your pubspec.yaml.
''');
}

Future<void> _installGetXDependencies(Logger logger) async {
  logger.info('📦 Installing GetX packages...');

  final pubspecFile = File('pubspec.yaml');
  if (!pubspecFile.existsSync()) {
    logger.err('❌ pubspec.yaml not found in current directory.');
    return;
  }

  String content = await pubspecFile.readAsString();

  bool hasGet = false;

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

  final packagesToAdd = <String>[];
  if (!hasGet) packagesToAdd.add('  get: ^4.6.6');

  if (packagesToAdd.isEmpty) {
    logger.info('✅ All GetX packages are already installed');
    return;
  }

  logger.info('📦 Adding missing packages: ${packagesToAdd.length} package(s)');

  final backupFile = File('pubspec.yaml.backup');
  await backupFile.writeAsString(content);
  logger.info('📋 Created backup: pubspec.yaml.backup');

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
      if (i + 1 < lines.length) {
        final nextLine = lines[i + 1];
        final trimmedNextLine = nextLine.trim();

        if (trimmedNextLine == 'dev_dependencies:' ||
            (trimmedNextLine.isNotEmpty &&
                !nextLine.startsWith('  ') &&
                !nextLine.startsWith('\t'))) {
          for (final package in packagesToAdd) {
            updatedLines.add(package);
          }
          packagesAdded = true;
        }
      } else {
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

  for (final package in packagesToAdd) {
    logger.info('   + $package');
  }

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
// 🧩 CLEAN FEATURE-BASED (with GetX)
// ------------------------------------------------------------------
void _createCleanFeature(Directory libDir, Logger logger) {
  final featureName = 'signin';
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
  final className = 'Signin';
  final fileName = 'signin';
  _createSeparateRouteFiles(libDir, fileName, className,
      'features/$featureName/presentation/views', logger);
}

// ------------------------------------------------------------------
// 🧩 Create GetX-specific files for Clean Architecture
// ------------------------------------------------------------------
void _createGetXFiles(Directory featureDir, Logger logger) {
  // ✅ Example View File (using GetView)
  File('${featureDir.path}/presentation/views/signin_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/signin_viewmodel.dart';

class SigninView extends GetView<SigninViewModel> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
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
      '🧱 Created: lib/features/signin/presentation/views/signin_view.dart');

  // ✅ ViewModel (GetX Controller) - Updated to use UseCase
  File('${featureDir.path}/presentation/viewmodels/signin_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '../../domain/usecases/signin_usecase.dart';
import '../../../../core/core.dart';
class SigninViewModel extends GetxController {
  final SigninUsecase signinUsecase;
  
  SigninViewModel({required this.signinUsecase});
  
  final tapCount = 0.obs;
  final dynamic data = ''.obs;
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
    await executeUseCase(
      useCase: () => signinUsecase.call(null),

      loadingState: isLoading,

      onSuccess: (result) {
        data.value = result;
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
      '🧱 Created: lib/features/signin/presentation/viewmodels/signin_viewmodel.dart');

  // ✅ Dependencies Binding - Updated to include UseCase
  File('${featureDir.path}/presentation/dependencies/signin_binding.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '../../data/datasources/remote_signin_datasource.dart';
import '../../data/repository_impl/signin_repository_impl.dart';
import '../../domain/repositories/signin_repository.dart';
import '../../domain/usecases/signin_usecase.dart';
import '../viewmodels/signin_viewmodel.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    // DataSource - pass DioHelper instance
    Get.lazyPut<IRemoteSigninDataSource>(
      () => RemoteSigninDataSourceImpl(Get.find()),
    );
    
    // Repository
    Get.lazyPut<ISigninRepository>(
      () => SigninRepositoryImpl(dataSource: Get.find()),
    );
    
    // UseCase
    Get.lazyPut<SigninUsecase>(
      () => SigninUsecase(repository: Get.find()),
    );
    
    // ViewModel/Controller
    Get.lazyPut<SigninViewModel>(
      () => SigninViewModel(signinUsecase: Get.find()),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/presentation/dependencies/signin_binding.dart');

  // ✅ DataSource with Interface + Implementation extending BaseRemoteDataSource
  File('${featureDir.path}/data/datasources/remote_signin_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
        '''import '../../../../core/shared/datasource/base_datasource.dart';

abstract interface class IRemoteSigninDataSource {
  Future<String> fetchData();
}

class RemoteSigninDataSourceImpl extends BaseRemoteDataSource
    implements IRemoteSigninDataSource {
  RemoteSigninDataSourceImpl(super.dioHelper);

  @override
  Future<String> fetchData() async {
    return getApiHelper(
      url: 'https://jsonplaceholder.typicode.com/posts/1',
      fromJson: (json) => json['title'] as String,
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/data/datasources/remote_signin_datasource.dart');

  // ✅ Example Entity
  File('${featureDir.path}/domain/entities/signin_entity.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class SigninEntity {
  final String id;
  final String title;

  SigninEntity({required this.id, required this.title});
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/domain/entities/signin_entity.dart');

  // ✅ UseCase with dynamic params and return type
  File('${featureDir.path}/domain/usecases/signin_usecase.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:fpdart/fpdart.dart';
import '../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../core/shared/domain/usecase/base_usecase.dart';
import '../repositories/signin_repository.dart';

class SigninUsecase implements Usecase<dynamic, dynamic> {
  final ISigninRepository repository;

  SigninUsecase({required this.repository});

  @override
  Future<Either<AppException, dynamic>> call(dynamic params) {
    return repository.getData();
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/domain/usecases/signin_usecase.dart');

  // ✅ Example Repository Interface
  File('${featureDir.path}/domain/repositories/signin_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:fpdart/fpdart.dart';
import '../../../../core/networks/exceptions/app_exceptions.dart';

abstract interface class ISigninRepository {
   Future<Either<AppException, dynamic>> getData();
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/domain/repositories/signin_repository.dart');

  // ✅ Example Repository Implementation
  File('${featureDir.path}/data/repository_impl/signin_repository_impl.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
        '''import '../../domain/repositories/signin_repository.dart';
import '../datasources/remote_signin_datasource.dart';
import '../../../../core/shared/domain/repository/base_repository.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/networks/exceptions/app_exceptions.dart';

class SigninRepositoryImpl extends BaseRepository implements ISigninRepository {
  final IRemoteSigninDataSource dataSource;

  SigninRepositoryImpl({required this.dataSource});

  @override
 Future<Either<AppException, dynamic>> getData() {
     return execute(
      () => dataSource.fetchData(),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/data/repository_impl/signin_repository_impl.dart');
}

// ------------------------------------------------------------------
// 🧩 Create Separate Route Files (Paths, Names, Routes)
// ------------------------------------------------------------------
void _createSeparateRouteFiles(Directory libDir, String fileName,
    String className, String viewPath, Logger logger) {
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

  // ✅ 3. Create routes.dart (GetX routing)
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
