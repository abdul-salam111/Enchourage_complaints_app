import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  // Show numbered options
  logger.info('''
🔧 Select your project architecture:
1️⃣  Simple MVVM
2️⃣  Clean Architecture (with Bloc)
3️⃣  Clean Architecture (with MVVM)
''');

  // Read numeric choice
  stdout.write('Enter your choice (1-3): ');
  final input = stdin.readLineSync();

  final choice = int.tryParse(input ?? '');
  if (choice == null || choice < 1 || choice > 3) {
    logger.err('❌ Invalid selection. Please enter a number between 1 and 3.');
    exit(1);
  }

  String architecture;
  switch (choice) {
    case 1:
      architecture = 'simple_mvvm';
      break;
    case 2:
      architecture = 'clean_bloc';
      break;
    case 3:
      architecture = 'clean_mvvm';
      break;
    default:
      architecture = 'simple_mvvm';
  }

  logger.info('Setting up $architecture architecture...');

  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');
  if (!libDir.existsSync()) {
    libDir.createSync(recursive: true);
  }

  switch (architecture) {
    case 'simple_mvvm':
      _createSimpleMVVM(libDir, logger);
      break;
    case 'clean_bloc':
      _createCleanFeature(libDir, logger, useBloc: true);
      break;
    case 'clean_mvvm':
      _createCleanFeature(libDir, logger, useBloc: false);
      break;
  }

  logger.success('✅ $architecture architecture setup complete!');
}

// ------------------------------------------------------------------
// 🧩 SIMPLE MVVM
// ------------------------------------------------------------------
void _createSimpleMVVM(Directory libDir, Logger logger) {
  final folders = [
    'models',
    'models/request_models',
    'models/response_models',
    'views',
    'viewmodels',
    'routes',
    'repositories'
  ];
  for (var folder in folders) {
    Directory('${libDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/$folder');
  }

  // 🧱 HomeView
  File('${libDir.path}/views/home_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  final viewModel = HomeViewModel();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: viewModel.onButtonPressed,
          child: const Text('Tap Me'),
        ),
      ),
    );
  }
}
''');
  logger.success('🧱 Created: lib/views/home_view.dart');

  // 🧱 ViewModel
  File('${libDir.path}/viewmodels/home_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';

class HomeViewModel {
  void onButtonPressed() {
    debugPrint('HomeViewModel: Button pressed!');
  }
  
  void dispose() {
    // Clean up resources
  }
}
''');
  logger.success('🧱 Created: lib/viewmodels/home_viewmodel.dart');

  // 🧱 Create separate route files
  _createSeparateRouteFiles(libDir, 'home', 'Home', 'views', logger);
}

// ------------------------------------------------------------------
// 🧩 CLEAN FEATURE-BASED (with Bloc or MVVM)
// ------------------------------------------------------------------
void _createCleanFeature(Directory libDir, Logger logger, {bool useBloc = true}) {
  final featureName = useBloc ? 'signin' : 'home';
  final featureDir = Directory('${libDir.path}/features/$featureName');
  final dataFolders = [
    'datasources',
    'repository_impl',
    'models',
    'models/request_models',
    'models/response_models'
  ];
  final domainFolders = ['repositories', 'usecases', 'entities'];
  final presentationFolders = useBloc 
      ? ['views', 'widgets', 'blocs'] 
      : ['views', 'widgets', 'viewmodels'];

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
    logger.success('📁 Created: lib/features/$featureName/presentation/$folder');
  }

  if (useBloc) {
    _createBlocFiles(featureDir, logger);
  } else {
    _createMVVMFiles(featureDir, logger);
  }

  // ✅ Create separate route files
  final className = useBloc ? 'SignIn' : 'Home';
  final fileName = useBloc ? 'signIn' : 'home';
  _createSeparateRouteFiles(
      libDir, fileName, className, 'features/$featureName/presentation/views', logger);
}

// ------------------------------------------------------------------
// 🧩 Create Bloc-specific files
// ------------------------------------------------------------------
void _createBlocFiles(Directory featureDir, Logger logger) {
  // ✅ Example View File
  File('${featureDir.path}/presentation/views/signin_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
      ),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/presentation/views/signin_view.dart');

  // ✅ DataSource with Interface + Implementation
  File('${featureDir.path}/data/datasources/remote_signin_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''
/// Abstract data source defines the contract for remote sign-in operations.
abstract interface class IRemoteSignInDataSource {
  Future<bool> login(String email, String password);
}

/// Concrete implementation of the remote sign-in data source.
class RemoteSignInDataSourceImpl implements IRemoteSignInDataSource {
  @override
  Future<bool> login(String email, String password) async {
    try {
        return true;
    } catch (error) {
      throw Exception('Login error: \${error.toString()}');
    }
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/data/datasources/remote_signin_datasource.dart');

  // ✅ Example Entity
  File('${featureDir.path}/domain/entities/user_entity.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class UserEntity {
  final String email;
  final String password;

  UserEntity({required this.email, required this.password});
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/domain/entities/user_entity.dart');

  // ✅ Example Repository Interface
  File('${featureDir.path}/domain/repositories/signin_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class SignInRepository {
  Future<bool> signIn(String email, String password);
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

class SignInRepositoryImpl implements SignInRepository {
  final IRemoteSignInDataSource dataSource;

  SignInRepositoryImpl(this.dataSource);

  @override
  Future<bool> signIn(String email, String password) {
    return dataSource.login(email, password);
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/data/repository_impl/signin_repository_impl.dart');
}

// ------------------------------------------------------------------
// 🧩 Create MVVM-specific files
// ------------------------------------------------------------------
void _createMVVMFiles(Directory featureDir, Logger logger) {
  // ✅ Example View File
  File('${featureDir.path}/presentation/views/home_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  final viewModel = HomeViewModel();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: viewModel.onButtonPressed,
          child: const Text('Tap Me'),
        ),
      ),
    );
  }
}
''');
  logger.success('🧱 Created: lib/features/home/presentation/views/home_view.dart');

  // ✅ ViewModel
  File('${featureDir.path}/presentation/viewmodels/home_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';

class HomeViewModel {
  void onButtonPressed() {
    debugPrint('HomeViewModel: Button pressed!');
  }
  
  void dispose() {
    // Clean up resources
  }
}
''');
  logger.success('🧱 Created: lib/features/home/presentation/viewmodels/home_viewmodel.dart');

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
  logger.success('🧱 Created: lib/features/home/data/datasources/remote_home_datasource.dart');

  // ✅ Example Entity
  File('${featureDir.path}/domain/entities/home_entity.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class HomeEntity {
  final String id;
  final String title;

  HomeEntity({required this.id, required this.title});
}
''');
  logger.success('🧱 Created: lib/features/home/domain/entities/home_entity.dart');

  // ✅ Example Repository Interface
  File('${featureDir.path}/domain/repositories/home_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class HomeRepository {
  Future<String> getData();
}
''');
  logger.success('🧱 Created: lib/features/home/domain/repositories/home_repository.dart');

  // ✅ Example Repository Implementation
  File('${featureDir.path}/data/repository_impl/home_repository_impl.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync(
        '''import '../../domain/repositories/home_repository.dart';
import '../datasources/remote_home_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  final IRemoteHomeDataSource dataSource;

  HomeRepositoryImpl(this.dataSource);

  @override
  Future<String> getData() {
    return dataSource.fetchData();
  }
}
''');
  logger.success('🧱 Created: lib/features/home/data/repository_impl/home_repository_impl.dart');
}

// ------------------------------------------------------------------
// 🧩 SHARED: Create Separate Route Files (Paths, Names, Routes)
// ------------------------------------------------------------------
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

  // ✅ 3. Create routes.dart
  final routesFile = File('${routesDir.path}/routes.dart');
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
        builder: (context, state) => ${className}View(),
      ),
    ],
  );
}
''');
  logger.success('🧭 Created: lib/routes/routes.dart');
}