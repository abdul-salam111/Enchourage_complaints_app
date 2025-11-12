import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final architecture = context.vars['architecture']?.toLowerCase();
  final logger = context.logger;

  // ✅ Validate input architecture
  const validArchitectures = ['mvc', 'mvvm', 'clean'];
  if (!validArchitectures.contains(architecture)) {
    logger.err('❌ Invalid architecture entered: "$architecture"');
    logger.info(
        'Please choose one of the following valid architectures: mvc | mvvm | clean');
    exit(1); // 🚫 Stop execution
  }

  logger.info('Setting up ${architecture.toUpperCase()} architecture...');

  // Get current working directory
  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');

  if (!libDir.existsSync()) {
    libDir.createSync(recursive: true);
  }

  // Create structure based on valid architecture
  switch (architecture) {
    case 'mvc':
      _createMVCStructure(libDir, logger);
      break;
    case 'mvvm':
      _createMVVMStructure(libDir, logger);
      break;
    case 'clean':
      _createCleanStructure(libDir, logger);
      break;
  }

  logger.success('${architecture.toUpperCase()} architecture setup complete! ✓');
}

// ----------------------------------------------------------
// ✅ MVC STRUCTURE
// ----------------------------------------------------------
void _createMVCStructure(Directory libDir, Logger logger) {
  final folders = ['models', 'views', 'controllers', 'routes'];

  for (var folder in folders) {
    final dir = Directory('${libDir.path}/$folder');
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
      logger.success('✓ Created: lib/$folder');
    }
  }

  // Create HomeView
  final homeViewFile = File('${libDir.path}/views/home_view.dart');
  if (!homeViewFile.existsSync()) {
    homeViewFile.createSync(recursive: true);
    homeViewFile.writeAsStringSync('''import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = HomeController();

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
    logger.success('✓ Created: lib/views/home_view.dart');
  }

  // Create HomeController
  final homeControllerFile =
      File('${libDir.path}/controllers/home_controller.dart');
  if (!homeControllerFile.existsSync()) {
    homeControllerFile.createSync(recursive: true);
    homeControllerFile.writeAsStringSync('''import 'package:flutter/material.dart';

class HomeController {
  void onButtonPressed() {
    debugPrint('HomeController: Button pressed!');
  }
}
''');
    logger.success('✓ Created: lib/controllers/home_controller.dart');
  }

  // Create routes file with GoRouter referencing HomeView
  final routesFile = File('${libDir.path}/routes/routes.dart');
  if (!routesFile.existsSync()) {
    routesFile.createSync(recursive: true);
    routesFile.writeAsStringSync('''import 'package:go_router/go_router.dart';
import '../views/home_view.dart';

class AppRoutes {
  static const String homePath = '/';
  static const String homeName = 'home';
  
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
    logger.success('✓ Created: lib/routes/routes.dart (with HomeView)');
  }
}

// ----------------------------------------------------------
// ✅ MVVM STRUCTURE
// ----------------------------------------------------------
void _createMVVMStructure(Directory libDir, Logger logger) {
  final folders = ['models', 'views', 'viewmodels', 'routes'];

  for (var folder in folders) {
    final dir = Directory('${libDir.path}/$folder');
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
      logger.success('✓ Created: lib/$folder');
    }
  }
}

// ----------------------------------------------------------
// ✅ CLEAN STRUCTURE
// ----------------------------------------------------------
void _createCleanStructure(Directory libDir, Logger logger) {
  final folders = ['features'];

  for (var folder in folders) {
    final dir = Directory('${libDir.path}/$folder');
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
      logger.success('✓ Created: lib/$folder');
    }
  }
}
