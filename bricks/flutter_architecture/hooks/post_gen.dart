import 'dart:io';
import 'dart:convert';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  // Show numbered options
  logger.info('''
🔧 Select your project architecture:
1️⃣  Simple MVVM
2️⃣  Clean Architecture (with Bloc)
3️⃣  Clean Architecture (with GetX)
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
  bool useBloc = false;
  bool useGetX = false;

  switch (choice) {
    case 1:
      architecture = 'simple_mvvm';
      break;
    case 2:
      architecture = 'clean_bloc';
      useBloc = true;
      break;
    case 3:
      architecture = 'clean_getx';
      useGetX = true;
      break;
    default:
      architecture = 'simple_mvvm';
  }

  logger.info('Setting up $architecture architecture...');

  // Install packages based on selection
  if (useBloc) {
    await _installBlocDependencies(logger);
  } else if (useGetX) {
    await _installGetXDependencies(logger);
  }

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
    case 'clean_getx':
      _createCleanFeature(libDir, logger, useGetX: true);
      break;
  }

  logger.success('✅ $architecture architecture setup complete!');

  // Show next steps
  if (useBloc) {
    logger.info('''
📦 Bloc packages have been added to your pubspec.yaml.

Next steps:
1. Run 'flutter pub get' to install dependencies (if not already done)
2. Start implementing your features in lib/features/
3. Check lib/routes/ for navigation setup
4. Check lib/core/app_dependencies.dart for dependency injection setup
''');
  } else if (useGetX) {
    logger.info('''
📦 GetX packages have been added to your pubspec.yaml.

Next steps:
1. Run 'flutter pub get' to install dependencies (if not already done)
2. Start implementing your features in lib/features/
3. Check lib/routes/ for navigation setup
4. Each feature has its own Binding for dependency injection in presentation/dependencies/
5. Update your main.dart to use GetMaterialApp with AppRoutes.routes
''');
  } else {
    logger.info('''
Next steps:
1. Start implementing your views and viewmodels
2. Check lib/routes/ for navigation setup
3. Add any additional dependencies to pubspec.yaml as needed
''');
  }
}

// ------------------------------------------------------------------
// 🧩 Install Bloc Dependencies
// ------------------------------------------------------------------
Future<void> _installBlocDependencies(Logger logger) async {
  logger.info('📦 Installing Bloc packages...');

  final pubspecFile = File('pubspec.yaml');
  if (!pubspecFile.existsSync()) {
    logger.err('❌ pubspec.yaml not found in current directory.');
    return;
  }

  String content = await pubspecFile.readAsString();

  // Check if Bloc packages are already in dependencies
  bool hasFlutterBloc = false;
  bool hasBloc = false;
  bool hasEquatable = false;
  bool hasGetIt = false;
  bool hasGoRouter = false;

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
      if (line.contains('flutter_bloc:')) hasFlutterBloc = true;
      if (line.contains('bloc:')) hasBloc = true;
      if (line.contains('equatable:')) hasEquatable = true;
      if (line.contains('get_it:')) hasGetIt = true;
      if (line.contains('go_router:')) hasGoRouter = true;
    }
  }

  // List of packages to add
  final packagesToAdd = <String>[];
  if (!hasFlutterBloc) packagesToAdd.add('  flutter_bloc: ^8.1.3');
  if (!hasBloc) packagesToAdd.add('  bloc: ^8.1.2');
  if (!hasEquatable) packagesToAdd.add('  equatable: ^2.0.5');
  if (!hasGetIt) packagesToAdd.add('  get_it: ^7.6.4');
  if (!hasGoRouter) packagesToAdd.add('  go_router: ^12.1.2');

  if (packagesToAdd.isEmpty) {
    logger.info('✅ All Bloc packages are already installed');
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
  bool hasGetStorage = false;

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
      if (line.contains('get_storage:')) hasGetStorage = true;
    }
  }

  // List of packages to add
  final packagesToAdd = <String>[];
  if (!hasGet) packagesToAdd.add('  get: ^4.6.6');
  if (!hasGetStorage) packagesToAdd.add('  get_storage: ^2.1.1');

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
  _createSeparateRouteFiles(libDir, 'home', 'Home', 'views', logger,
      useGetX: false);
}

// ------------------------------------------------------------------
// 🧩 CLEAN FEATURE-BASED (with Bloc or GetX)
// ------------------------------------------------------------------
void _createCleanFeature(Directory libDir, Logger logger,
    {bool useBloc = false, bool useGetX = false}) {
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
      : ['views', 'widgets', 'viewmodels', 'dependencies'];

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

  if (useBloc) {
    _createBlocFiles(featureDir, logger);
  } else {
    _createGetXFiles(featureDir, logger);
  }

  // ✅ Create separate route files
  final className = useBloc ? 'SignIn' : 'Home';
  final fileName = useBloc ? 'signIn' : 'home';
  _createSeparateRouteFiles(libDir, fileName, className,
      'features/$featureName/presentation/views', logger,
      useGetX: useGetX);

  // ✅ Update dependency injection file (only for Bloc)
  if (useBloc) {
    _updateDependencyInjection(libDir, logger);
  }
}

// ------------------------------------------------------------------
// 🧩 Create Bloc-specific files
// ------------------------------------------------------------------
void _createBlocFiles(Directory featureDir, Logger logger) {
  // ✅ Example View File
  File('${featureDir.path}/presentation/views/signin_view.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/signin_bloc.dart';
import '../blocs/signin_event.dart';
import '../blocs/signin_state.dart';
import '../../../../core/app_dependencies.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<SignInBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Sign In')),
        body: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            if (state is SignInLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            
            if (state is SignInSuccess) {
              return const Center(child: Text('Sign In Successful!'));
            }
            
            if (state is SignInError) {
              return Center(child: Text('Error: \${state.message}'));
            }
            
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<SignInBloc>().add(
                    SignInSubmitted(email: 'test@example.com', password: 'password'),
                  );
                },
                child: const Text('Login'),
              ),
            );
          },
        ),
      ),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/presentation/views/signin_view.dart');

  // ✅ Create Bloc
  File('${featureDir.path}/presentation/blocs/signin_bloc.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/signin_repository.dart';
import 'signin_event.dart';
import 'signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInRepository repository;

  SignInBloc(this.repository) : super(SignInInitial()) {
    on<SignInSubmitted>(_onSignInSubmitted);
  }

  Future<void> _onSignInSubmitted(
    SignInSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInLoading());
    try {
      final result = await repository.signIn(event.email, event.password);
      if (result) {
        emit(SignInSuccess());
      } else {
        emit(SignInError('Sign in failed'));
      }
    } catch (e) {
      emit(SignInError(e.toString()));
    }
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/presentation/blocs/signin_bloc.dart');

  // ✅ Create Bloc Events
  File('${featureDir.path}/presentation/blocs/signin_event.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:equatable/equatable.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignInSubmitted extends SignInEvent {
  final String email;
  final String password;

  const SignInSubmitted({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/presentation/blocs/signin_event.dart');

  // ✅ Create Bloc States
  File('${featureDir.path}/presentation/blocs/signin_state.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {}

class SignInError extends SignInState {
  final String message;
  const SignInError(this.message);

  @override
  List<Object> get props => [message];
}
''');
  logger.success(
      '🧱 Created: lib/features/signin/presentation/blocs/signin_state.dart');

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
    ..writeAsStringSync('''import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String email;
  final String password;

  const UserEntity({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
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
// 🧩 Create GetX-specific files
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

  // ✅ ViewModel (GetX Controller)
  File('${featureDir.path}/presentation/viewmodels/home_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import 'package:get/get.dart';
import '../../domain/repositories/home_repository.dart';

class HomeViewModel extends GetxController {
  final HomeRepository repository;
  
  HomeViewModel(this.repository);
  
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
    Get.lazyPut<HomeRepository>(
      () => HomeRepositoryImpl(Get.find()),
    );
    
    // ViewModel/Controller
    Get.lazyPut<HomeViewModel>(
      () => HomeViewModel(Get.find()),
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

  // ✅ Example Repository Interface
  File('${featureDir.path}/domain/repositories/home_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''abstract interface class HomeRepository {
  Future<String> getData();
}
''');
  logger.success(
      '🧱 Created: lib/features/home/domain/repositories/home_repository.dart');

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
  logger.success(
      '🧱 Created: lib/features/home/data/repository_impl/home_repository_impl.dart');
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

  // ✅ 3. Create routes.dart (GetX or GoRouter based)
  final routesFile = File('${routesDir.path}/routes.dart');

  if (useGetX) {
    // GetX routing
    routesFile.writeAsStringSync('''import 'package:get/get.dart';
import 'route_paths.dart';
import 'route_names.dart';
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
  } else {
    // GoRouter (for Bloc and Simple MVVM)
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
  }

  logger.success('🧭 Created: lib/routes/routes.dart');
}

// ------------------------------------------------------------------
// 🧩 Update Dependency Injection (GetIt for Bloc)
// ------------------------------------------------------------------
void _updateDependencyInjection(Directory libDir, Logger logger) {
  // Create core directory if it doesn't exist
  final coreDir = Directory('${libDir.path}/core');
  if (!coreDir.existsSync()) {
    coreDir.createSync(recursive: true);
    logger.success('📁 Created: lib/core');
  }

  final depFile = File('${libDir.path}/core/app_dependencies.dart');

  // If file doesn't exist, create it with basic setup
  if (!depFile.existsSync()) {
    depFile.createSync(recursive: true);
    depFile.writeAsStringSync('''import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> setupLocator() async {
  // Register dependencies here
}
''');
    logger.success('🧩 Created: lib/core/app_dependencies.dart');
  }

  String content = depFile.readAsStringSync();

  // Check if SignIn dependencies are already registered
  if (content.contains('SignInBloc') || content.contains('SignInRepository')) {
    logger.warn(
        '⚠️  SignIn dependencies already registered in app_dependencies.dart');
    return;
  }

  // Add imports at the top (after existing imports)
  final lastImportIndex = content.lastIndexOf("import '");
  if (lastImportIndex != -1) {
    final endOfLastImport = content.indexOf(';', lastImportIndex) + 1;
    final newImports = '''

import '../features/signin/data/datasources/remote_signin_datasource.dart';
import '../features/signin/data/repository_impl/signin_repository_impl.dart';
import '../features/signin/domain/repositories/signin_repository.dart';
import '../features/signin/presentation/blocs/signin_bloc.dart';''';

    content = content.substring(0, endOfLastImport) +
        newImports +
        content.substring(endOfLastImport);
  }

  // Find the setupLocator function and add registrations
  final setupFunctionMatch =
      RegExp(r'Future<void>\s+setupLocator\s*\(\s*\)\s+async\s*\{')
          .firstMatch(content);
  if (setupFunctionMatch != null) {
    final functionStart = setupFunctionMatch.end;
    final registrations = '''

  // SignIn Feature Dependencies
  sl.registerLazySingleton<IRemoteSignInDataSource>(
    () => RemoteSignInDataSourceImpl(),
  );
  
  sl.registerLazySingleton<SignInRepository>(
    () => SignInRepositoryImpl(sl()),
  );
  
  sl.registerFactory<SignInBloc>(
    () => SignInBloc(sl()),
  );
''';

    content = content.substring(0, functionStart) +
        registrations +
        content.substring(functionStart);
  }

  depFile.writeAsStringSync(content);
  logger.success(
      '🔧 Updated: lib/core/app_dependencies.dart with SignIn dependencies');
}
