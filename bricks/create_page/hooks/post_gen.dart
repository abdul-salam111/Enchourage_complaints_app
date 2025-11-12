import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final pageName = context.vars['page_name'];
  final logger = context.logger;

  // Convert to case styles
  final className = _toPascalCase(pageName);
  final fileName = _toSnakeCase(pageName);

  logger.info('Creating MVC page: $pageName');

  final currentDir = Directory.current;

  // Create view and controller
  _createView(currentDir, className, fileName, logger);
  _createController(currentDir, className, fileName, logger);

  // Add route to routes.dart
  _updateRoutes(currentDir, className, fileName, logger);

  logger.success('\n✓ $className page created successfully!');
  logger.info('\n📁 Files created:');
  logger.info('  ✓ lib/views/${fileName}_view.dart');
  logger.info('  ✓ lib/controllers/${fileName}_controller.dart');
  logger.info('  ✓ Route added to lib/routes/routes.dart');
}

void _createView(
    Directory currentDir, String className, String fileName, Logger logger) {
  final file = File('${currentDir.path}/lib/views/${fileName}_view.dart');
  file.createSync(recursive: true);
  file.writeAsStringSync('''import 'package:flutter/material.dart';
import '../controllers/${fileName}_controller.dart';

class ${className}View extends StatefulWidget {
  const ${className}View({super.key});

  @override
  State<${className}View> createState() => _${className}ViewState();
}

class _${className}ViewState extends State<${className}View> {
  late final ${className}Controller _controller;

  @override
  void initState() {
    super.initState();
    _controller = ${className}Controller();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('$className')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$className View',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Action Button'),
            ),
          ],
        ),
      ),
    );
  }
}
''');
}

void _createController(
    Directory currentDir, String className, String fileName, Logger logger) {
  final file =
      File('${currentDir.path}/lib/controllers/${fileName}_controller.dart');
  file.createSync(recursive: true);
  file.writeAsStringSync('''

class ${className}Controller {
  ${className}Controller() {
    _initialize();
  }

  void _initialize() {
    // Initialize controller
  }

  void dispose() {
    // Dispose resources
  }
}
''');
}

void _updateRoutes(
    Directory currentDir, String className, String fileName, Logger logger) {
  final routesFile = File('${currentDir.path}/lib/routes/routes.dart');

  if (!routesFile.existsSync()) {
    logger.warn('⚠ routes.dart not found. Creating new one for GoRouter...');
    routesFile.createSync(recursive: true);
    routesFile.writeAsStringSync('''import 'package:go_router/go_router.dart';
import '../views/${fileName}_view.dart';

class AppRoutes {
  static const String $fileName = '/$fileName';
  static const String ${fileName}Name = '$fileName';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: $fileName,
        name: ${fileName}Name,
        builder: (context, state) => const ${className}View(),
      ),
    ],
  );
}
''');
    return;
  }

  String content = routesFile.readAsStringSync();

  // ✅ Add import
  if (!content.contains("import '../views/${fileName}_view.dart';")) {
    final lastImport = RegExp(r"import '[^']+';").allMatches(content).last;
    content =
        "${content.substring(0, lastImport.end)}\nimport '../views/${fileName}_view.dart';${content.substring(lastImport.end)}";
  }

  // ✅ Add route constants (path + name)
  if (!content.contains("static const String $fileName = '/$fileName';")) {
    final match = RegExp(r'class AppRoutes \{').firstMatch(content);
    if (match != null) {
      content =
          "${content.substring(0, match.end)}\n  static const String $fileName = '/$fileName';\n  static const String ${fileName}Name = '$fileName';${content.substring(match.end)}";
    }
  }

  // ✅ Add GoRoute if missing
  if (!content.contains("name: ${fileName}Name")) {
    final goRouteMatch = RegExp(r'routes:\s*\[').firstMatch(content);
    if (goRouteMatch != null) {
      final insertPos = goRouteMatch.end;
      content =
          "${content.substring(0, insertPos)}\n      GoRoute(path: $fileName, name: ${fileName}Name, builder: (context, state) => const ${className}View(),),${content.substring(insertPos)}";
    } else {
      logger.warn('⚠ Could not find GoRouter routes list in routes.dart');
    }
  }

  routesFile.writeAsStringSync(content);
  logger.success('✓ Route (path + name) added successfully!');
}

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
      .replaceAll(RegExp(r'^_'), '')
      .replaceAll(RegExp(r'__+'), '_');
}
