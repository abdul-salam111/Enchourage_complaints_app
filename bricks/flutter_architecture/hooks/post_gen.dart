import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  // Show numbered options
  logger.info('''
🔧 Select your project architecture:
1️⃣  Simple MVC
2️⃣  Simple MVVM
3️⃣  Clean Feature-Based
4️⃣  MVC Feature-Based
5️⃣  MVVM Feature-Based
''');

  // Read numeric choice
  stdout.write('Enter your choice (1-5): ');
  final input = stdin.readLineSync();

  final choice = int.tryParse(input ?? '');
  if (choice == null || choice < 1 || choice > 5) {
    logger.err('❌ Invalid selection. Please enter a number between 1 and 5.');
    exit(1);
  }

  String architecture;
  switch (choice) {
    case 1:
      architecture = 'simple_mvc';
      break;
    case 2:
      architecture = 'simple_mvvm';
      break;
    case 3:
      architecture = 'clean_feature';
      break;
    case 4:
      architecture = 'mvc_feature';
      break;
    case 5:
      architecture = 'mvvm_feature';
      break;
    default:
      architecture = 'simple_mvc';
  }

  logger.info('Setting up $architecture architecture...');

  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');
  if (!libDir.existsSync()) {
    libDir.createSync(recursive: true);
  }

  switch (architecture) {
    case 'simple_mvc':
      _createSimpleMVC(libDir, logger);
      break;
    case 'simple_mvvm':
      _createSimpleMVVM(libDir, logger);
      break;
    case 'clean_feature':
      _createCleanFeature(libDir, logger);
      break;
    case 'mvc_feature':
      _createMVCFeature(libDir, logger);
      break;
    case 'mvvm_feature':
      _createMVVMFeature(libDir, logger);
      break;
  }

  logger.success('✅ $architecture architecture setup complete!');
}

// ------------------------------------------------------------------
// 🧩 SIMPLE MVC
// ------------------------------------------------------------------
void _createSimpleMVC(Directory libDir, Logger logger) {
  final folders = [
    'models',
    'models/request_models',
    'models/response_models',
    'views',
    'controllers',
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
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final controller = HomeController();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: controller.onButtonPressed,
          child: const Text('Tap Me'),
        ),
      ),
    );
  }
}
''');
  logger.success('🧱 Created: lib/views/home_view.dart');

  // 🧱 Controller
  File('${libDir.path}/controllers/home_controller.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';

class HomeController {
  void onButtonPressed() {
    debugPrint('HomeController: Button pressed!');
  }
  
  void dispose() {
    // Clean up resources
  }
}
''');
  logger.success('🧱 Created: lib/controllers/home_controller.dart');

  // 🧱 Create separate route files
  _createSeparateRouteFiles(libDir, 'home', 'Home', 'views', logger);
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
// 🧩 CLEAN FEATURE-BASED
// ------------------------------------------------------------------
void _createCleanFeature(Directory libDir, Logger logger) {
  final featureDir = Directory('${libDir.path}/features/signin');
  final dataFolders = [
    'datasources',
    'repository_impl',
    'models',
    'models/request_models',
    'models/response_models'
  ];
  final domainFolders = ['repositories', 'usecases', 'entities'];
  final presentationFolders = ['views', 'widgets', 'blocs'];

  // ✅ Create root structure
  for (var folder in [
    'features',
    'features/signin',
    'features/signin/data',
    'features/signin/domain',
    'features/signin/presentation',
  ]) {
    Directory('${libDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/$folder');
  }

  // ✅ Create data layer
  for (var folder in dataFolders) {
    Directory('${featureDir.path}/data/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/signin/data/$folder');
  }

  // ✅ Create domain layer
  for (var folder in domainFolders) {
    Directory('${featureDir.path}/domain/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/signin/domain/$folder');
  }

  // ✅ Create presentation layer
  for (var folder in presentationFolders) {
    Directory('${featureDir.path}/presentation/$folder')
        .createSync(recursive: true);
    logger.success('📁 Created: lib/features/signin/presentation/$folder');
  }

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

  // ✅ Create separate route files
  _createSeparateRouteFiles(
      libDir, 'signIn', 'SignIn', 'features/signin/presentation/views', logger);
}

// ------------------------------------------------------------------
// 🧩 MVC FEATURE BASED
// ------------------------------------------------------------------
void _createMVCFeature(Directory libDir, Logger logger) {
  final featureDir = Directory('${libDir.path}/features/home');
  final folders = [
    'models',
    'models/request_models',
    'models/response_models',
    'views',
    'controllers'
  ];
  for (var folder in folders) {
    Directory('${featureDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/home/$folder');
  }

  // 🧱 HomeView
  File('${featureDir.path}/views/home_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final controller = HomeController();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: controller.onButtonPressed,
          child: const Text('Tap Me'),
        ),
      ),
    );
  }
}
''');
  logger.success('🧱 Created: lib/features/home/views/home_view.dart');

  // 🧱 Controller
  File('${featureDir.path}/controllers/home_controller.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';

class HomeController {
  void onButtonPressed() {
    debugPrint('HomeController: Button pressed!');
  }
  
  void dispose() {
    // Clean up resources
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/home/controllers/home_controller.dart');

  // 🧱 Create separate route files
  _createSeparateRouteFiles(libDir, 'home', 'Home', 'features/home/views', logger);
}

// ------------------------------------------------------------------
// 🧩 MVVM FEATURE BASED
// ------------------------------------------------------------------
void _createMVVMFeature(Directory libDir, Logger logger) {
  final featureDir = Directory('${libDir.path}/features/home');
  final folders = [
    'models',
    'models/request_models',
    'models/response_models',
    'views',
    'viewmodels'
  ];
  for (var folder in folders) {
    Directory('${featureDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/home/$folder');
  }

  // 🧱 HomeView
  File('${featureDir.path}/views/home_view.dart')
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
  logger.success('🧱 Created: lib/features/home/views/home_view.dart');

  // 🧱 ViewModel
  File('${featureDir.path}/viewmodels/home_viewmodel.dart')
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
  logger
      .success('🧱 Created: lib/features/home/viewmodels/home_viewmodel.dart');

  // 🧱 Create separate route files
  _createSeparateRouteFiles(libDir, 'home', 'Home', 'features/home/views', logger);
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