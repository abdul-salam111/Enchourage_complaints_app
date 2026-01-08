import 'dart:io';
import 'dart:convert';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  logger.info('🔧 Setting up Clean Architecture with Provider...');
  await _installProviderDependencies(logger);
  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');
  if (!libDir.existsSync()) {
    libDir.createSync(recursive: true);
  }

  _createCleanFeature(libDir, logger);

  logger.success('✅ Clean Architecture setup complete!');

  logger.info('''
📦 Provider, GetIt, and GoRouter packages have been added to your pubspec.yaml.
''');
}

Future<void> _installProviderDependencies(Logger logger) async {
  logger.info('📦 Installing Provider packages...');

  final pubspecFile = File('pubspec.yaml');
  if (!pubspecFile.existsSync()) {
    logger.err('❌ pubspec.yaml not found in current directory.');
    return;
  }

  String content = await pubspecFile.readAsString();

  bool hasProvider = false;
  bool hasGetIt = false;
  bool hasGoRouter = false;

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
      if (line.contains('provider:')) hasProvider = true;
      if (line.contains('get_it:')) hasGetIt = true;
      if (line.contains('go_router:')) hasGoRouter = true;
    }
  }

  final packagesToAdd = <String>[];
  if (!hasProvider) packagesToAdd.add('  provider: ^6.1.1');
  if (!hasGetIt) packagesToAdd.add('  get_it: ^7.6.7');
  if (!hasGoRouter) packagesToAdd.add('  go_router: ^13.0.0');

  if (packagesToAdd.isEmpty) {
    logger.info('✅ All required packages are already installed');
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
// 🧩 CLEAN FEATURE-BASED (with Provider + GetIt + GoRouter)
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
    'pages',
    'widgets',
    'viewmodels',
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

  // ✅ Create core folders
  _createCoreFolders(libDir, logger);

  // Create Provider files for clean architecture
  _createProviderFiles(featureDir, logger);

  // ✅ Create routing files
  final className = 'Signin';
  final fileName = 'signin';
  _createRouteFiles(libDir, fileName, className,
      'features/$featureName/presentation/pages', logger);

  // ✅ Create dependency injection file
  _createDependencyInjection(libDir, logger);
}

// ------------------------------------------------------------------
// 🧩 Create Core Folders
// ------------------------------------------------------------------
void _createCoreFolders(Directory libDir, Logger logger) {
  final coreFolders = [
    'core/routes',
    'core/di',
  ];

  for (var folder in coreFolders) {
    Directory('${libDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/$folder');
  }
}

// ------------------------------------------------------------------
// 🧩 Create Provider-specific files for Clean Architecture
// ------------------------------------------------------------------
void _createProviderFiles(Directory featureDir, Logger logger) {
  // ✅ Page File (using Provider)
  File('${featureDir.path}/presentation/pages/signin_page.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _userIdController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _userIdController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<SigninViewModel>(),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userIdController,
              decoration: InputDecoration(labelText: 'User ID'),
            ),
            heightBox(20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            heightBox(20),

            Consumer<SigninViewModel>(
              builder: (context, vm, _) {
                return ElevatedButton(
                  onPressed: vm.isLoading
                      ? null
                      : () => vm.signin(
                          _userIdController.text,
                          _passwordController.text,
                        ),
                  child: vm.isLoading
                      ? CircularProgressIndicator()
                      : Text('Sign In'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

''');
  logger.success(
      '🧱 Created: lib/features/signin/presentation/pages/signin_page.dart');

  // ✅ ViewModel (Provider + UseCaseExecutor)
  File('${featureDir.path}/presentation/viewmodels/signin_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class SigninViewModel extends ChangeNotifier with UseCaseExecutor {
  final SigninUsecase _signinUsecase;

  SigninViewModel({required SigninUsecase signinUsecase})
    : _signinUsecase = signinUsecase;

  UserToken? _userToken;
  UserToken? get userToken => _userToken;

  Future<void> signin(String userId, String password) async {
    await execute(
      call: () =>
          _signinUsecase(LoginUserById(uid: userId, password: password)),
      onSuccess: (token) {
        _userToken = token;
      },
    );
  }
}

''');
  logger.success(
      '🧱 Created: lib/features/signin/presentation/viewmodels/signin_viewmodel.dart');

  // ✅ DataSource
  File('${featureDir.path}/data/datasources/remote_signin_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

abstract interface class IRemoteSigninDataSource {
  Future<UserToken> loginUserById({required LoginUserById loginUserById});
}

class RemoteSigninDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteSigninDataSource {
  RemoteSigninDataSourceImpl({required super.dioHelper});

  @override
  Future<UserToken> loginUserById({
    required LoginUserById loginUserById,
  }) async {
    return post(
      url: ApiEndPoints.loginByUid,
      parser: (json) => UserToken.fromJson(json),
      body: loginUserById.toJson(),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/data/datasources/remote_signin_datasource.dart');

  // ✅ Entity
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

  // ✅ UseCase
  File('${featureDir.path}/domain/usecases/signin_usecase.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class SigninUsecase implements Usecase<UserToken, LoginUserById> {
  final ISigninRepository repository;

  SigninUsecase({required this.repository});

  @override
  Future<Either<AppException, UserToken>> call(LoginUserById loginUserById) {
    return repository.signinUserById(loginUserById: loginUserById);
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/domain/usecases/signin_usecase.dart');

  // ✅ Repository Interface
  File('${featureDir.path}/domain/repositories/signin_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

abstract interface class ISigninRepository {
  Future<Either<AppException, UserToken>> signinUserById({
    required LoginUserById loginUserById,
  });
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/domain/repositories/signin_repository.dart');

  // ✅ Repository Implementation
  File('${featureDir.path}/data/repository_impl/signin_repository_impl.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class SigninRepositoryImpl extends BaseRepository implements ISigninRepository {
  final IRemoteSigninDataSource dataSource;

  SigninRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, UserToken>> signinUserById({
    required LoginUserById loginUserById,
  }) {
    return execute(
      call: () => dataSource.loginUserById(loginUserById: loginUserById),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/data/repository_impl/signin_repository_impl.dart');
}

// ------------------------------------------------------------------
// 🧩 Create Route Files (GoRouter)
// ------------------------------------------------------------------
void _createRouteFiles(Directory libDir, String fileName, String className,
    String pagePath, Logger logger) {
  final routesDir = Directory('${libDir.path}/core/routes');

  // ✅ 1. Create route_paths.dart
  final pathsFile = File('${routesDir.path}/route_names.dart');
  pathsFile.writeAsStringSync('''
class RouteNames {
  static const String signin = "signin";
}
''');
  logger.success('🧭 Created: lib/core/routes/route_names.dart');

  // ✅ 2. Create app_router.dart
  final routerFile = File('${routesDir.path}/app_router.dart');
  routerFile.writeAsStringSync('''
import '../../app_exports.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static BuildContext? get context => navigatorKey.currentContext;
}

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.initialRoute,
    navigatorKey: AppNavigator.navigatorKey,
    routes: [
      GoRoute(
        path: RoutePaths.signin,
        name: RouteNames.signin,
        builder: (context, state) => const SigninPage(),
      ),
    ],
  );
}

''');
  logger.success('🧭 Created: lib/core/routes/app_router.dart');

  // ✅ 3. Create route_paths.dart
  final appRoutesFile = File('${routesDir.path}/route_paths.dart');
  appRoutesFile.writeAsStringSync('''
class RoutePaths {
  static const String initialRoute = signin;
  static const String signin = "/signin";
}

''');
  logger.success('🧭 Created: lib/core/routes/app_routes.dart');
}

// ------------------------------------------------------------------
// 🧩 Create Dependency Injection (GetIt)
// ------------------------------------------------------------------
void _createDependencyInjection(Directory libDir, Logger logger) {
  File('${libDir.path}/core/di/injection_container.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:dio/dio.dart';

import '../../app_exports.dart';


final sl = GetIt.instance;

Future<void> setupLocator() async {
  await coreDependencies();

  await authDependencies();
}

Future<void> coreDependencies() async {
  sl.registerLazySingleton<Dio>(() => getDio());
  sl.registerLazySingleton(() => DioHelper(sl()));
}

/// SignIn Feature Dependencies
Future<void> authDependencies() async {
  // DataSource
  sl.registerLazySingleton<IRemoteSigninDataSource>(
    () => RemoteSigninDataSourceImpl(dioHelper: sl()),
  );

  // Repository
  sl.registerLazySingleton<ISigninRepository>(
    () => SigninRepositoryImpl(dataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton<SigninUsecase>(
    () => SigninUsecase(repository: sl()),
  );

  // provider
  sl.registerFactory<SigninViewModel>(
    () => SigninViewModel(signinUsecase: sl()),
  );
}


''');
  logger.success('🧱 Created: lib/core/di/injection_container.dart');
}
