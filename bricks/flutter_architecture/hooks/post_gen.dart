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
  final folders = ['models', 'views', 'controllers', 'routes', 'repositories'];
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
}
''');
  logger.success('🧱 Created: lib/controllers/home_controller.dart');

  // 🧱 Routes
  File('${libDir.path}/routes/routes.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:go_router/go_router.dart';
import '../views/home_view.dart';

class AppRoutes {
  static const homePath = '/';
  static const homeName = 'home';
  
  static final GoRouter router = GoRouter(
    initialLocation: homePath,
    routes: [
      GoRoute(
        path: homePath,
        name: homeName,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
''');
  logger.success('🧱 Created: lib/routes/routes.dart');
}

// ------------------------------------------------------------------
// 🧩 SIMPLE MVVM
// (Same as MVC but uses ViewModel instead of Controller)
// ------------------------------------------------------------------
void _createSimpleMVVM(Directory libDir, Logger logger) {
  final folders = ['models', 'views', 'viewmodels', 'routes', 'repositories'];
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
}
''');
  logger.success('🧱 Created: lib/viewmodels/home_viewmodel.dart');

  // 🧱 Routes
  File('${libDir.path}/routes/routes.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:go_router/go_router.dart';
import '../views/home_view.dart';

class AppRoutes {
  static const homePath = '/';
  static const homeName = 'home';
  
  static final GoRouter router = GoRouter(
    initialLocation: homePath,
    routes: [
      GoRoute(
        path: homePath,
        name: homeName,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
''');
  logger.success('🧱 Created: lib/routes/routes.dart');
}

// ------------------------------------------------------------------
// 🧩 CLEAN FEATURE-BASED (with routes + datasource)
// ------------------------------------------------------------------
void _createCleanFeature(Directory libDir, Logger logger) {
  final featureDir = Directory('${libDir.path}/features/signin');
  final dataFolders = ['datasources', 'repository_impl', 'models'];
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
    // Simulate API request
    await Future.delayed(const Duration(seconds: 1));
    return email == "test@example.com" && password == "123456";
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

  // ✅ App Routes File
  final routesFile = File('${libDir.path}/routes/routes.dart');
  routesFile
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:go_router/go_router.dart';
import '../features/signin/presentation/views/signin_view.dart';

class AppRoutes {
  static const String signIn = '/signin';

  static final GoRouter router = GoRouter(
    initialLocation: signIn,
    routes: [
      GoRoute(
        path: signIn,
        name: 'signin',
        builder: (context, state) => const SignInView(),
      ),
    ],
  );
}
''');
  logger.success('🧱 Created: lib/routes/routes.dart');

  logger.success(
      '✅ Clean Feature-Based architecture setup complete with interface + implementation in datasource!');
}

// ------------------------------------------------------------------
// 🧩 MVC FEATURE BASED
// ------------------------------------------------------------------
void _createMVCFeature(Directory libDir, Logger logger) {
  final featureDir = Directory('${libDir.path}/features/home');
  final folders = ['models', 'views', 'controllers'];
  for (var folder in folders) {
    Directory('${featureDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/home/$folder');
  }
}

// ------------------------------------------------------------------
// 🧩 MVVM FEATURE BASED
// ------------------------------------------------------------------
void _createMVVMFeature(Directory libDir, Logger logger) {
  final featureDir = Directory('${libDir.path}/features/home');
  final folders = ['models', 'views', 'viewmodels'];
  for (var folder in folders) {
    Directory('${featureDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/home/$folder');
  }
}
