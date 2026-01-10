import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  // 🧠 Step 1: Get feature name from vars
  final featureName = context.vars['page_name'] as String;

  final className = _toPascalCase(featureName);
  final fileName = _toSnakeCase(featureName);

  final currentDir = Directory.current;
  final libDir = Directory('${currentDir.path}/lib');

  if (!libDir.existsSync()) {
    libDir.createSync(recursive: true);
  }

  // 🧠 Step 2: Auto-detect architecture type
  final architecture = _detectArchitecture(libDir);

  if (architecture == 'Unknown') {
    logger.err('❌ Could not detect Clean Architecture with Provider.');
    logger.info('💡 Please run setup_architecture first.');
    exit(1);
  }

  logger.info('\n🧠 Detected architecture: $architecture');
  logger.info('Creating feature: $featureName\n');

  // 🧱 Step 3: Create feature structure
  _createCleanFeature(libDir, className, fileName, logger);

  // 🧱 Step 4: Update routes automatically
  _updateRoutes(libDir, className, fileName, logger);

  // 🧱 Step 5: Update dependency injection automatically
  _updateDependencyInjection(libDir, className, fileName, logger);

  logger.success('\n✅ $className feature created successfully!');
  logger.info(
      '\n🎉 All files, routes, and dependencies configured automatically!');
}

String _detectArchitecture(Directory libDir) {
  // Check for Clean Architecture with Provider setup
  if (Directory('${libDir.path}/features').existsSync() &&
      Directory('${libDir.path}/core/di').existsSync() &&
      Directory('${libDir.path}/core/routes').existsSync()) {
    final features = Directory('${libDir.path}/features').listSync();
    if (features.isNotEmpty) {
      final firstFeature = features.first;
      if (firstFeature is Directory) {
        // Check for Clean Architecture structure
        if (Directory('${firstFeature.path}/data').existsSync() &&
            Directory('${firstFeature.path}/domain').existsSync() &&
            Directory('${firstFeature.path}/presentation').existsSync()) {
          return 'CleanArchitecture-Provider';
        }
      }
    }
  }

  return 'Unknown';
}

// ------------------------------------------------------------------
// 🧩 CREATE CLEAN FEATURE WITH PROVIDER
// ------------------------------------------------------------------
void _createCleanFeature(
  Directory libDir,
  String className,
  String fileName,
  Logger logger,
) {
  final featureDir = Directory('${libDir.path}/features/$fileName');

  final dataFolders = [
    'datasources',
    'repository_impl',
    'models',
    'models/request_models',
    'models/response_models'
  ];
  final domainFolders = ['repositories', 'usecases', 'entities'];
  final presentationFolders = ['pages', 'widgets', 'viewmodels'];

  // ✅ Create root structure
  for (var folder in [
    'features/$fileName',
    'features/$fileName/data',
    'features/$fileName/domain',
    'features/$fileName/presentation',
  ]) {
    Directory('${libDir.path}/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/$folder');
  }

  // ✅ Create data layer
  for (var folder in dataFolders) {
    Directory('${featureDir.path}/data/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/$fileName/data/$folder');
  }

  // ✅ Create domain layer
  for (var folder in domainFolders) {
    Directory('${featureDir.path}/domain/$folder').createSync(recursive: true);
    logger.success('📁 Created: lib/features/$fileName/domain/$folder');
  }

  // ✅ Create presentation layer
  for (var folder in presentationFolders) {
    Directory('${featureDir.path}/presentation/$folder')
        .createSync(recursive: true);
    logger.success('📁 Created: lib/features/$fileName/presentation/$folder');
  }

  // ✅ Create Provider files for clean architecture
  _createProviderFiles(featureDir, className, fileName, logger);

  logger.info('\n📋 Feature structure created for: $className');
}

// ------------------------------------------------------------------
// 🧩 CREATE PROVIDER FILES
// ------------------------------------------------------------------
void _createProviderFiles(
  Directory featureDir,
  String className,
  String fileName,
  Logger logger,
) {
  // ✅ 1. Page File (using Provider)
  File('${featureDir.path}/presentation/pages/${fileName}_page.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class ${className}Page extends StatefulWidget {
  const ${className}Page({super.key});

  @override
  State<${className}Page> createState() => _${className}PageState();
}

class _${className}PageState extends State<${className}Page> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<${className}ViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('$className'),
        ),
        body: Consumer<${className}ViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$className Page',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: viewModel.isLoading
                        ? null
                        : () => viewModel.performAction(),
                    child: const Text('Perform Action'),
                  ),
                ],
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
      '🧱 Created: lib/features/$fileName/presentation/pages/${fileName}_page.dart');

  // ✅ 2. ViewModel (Provider + UseCaseExecutor) - Using Response Model
  File('${featureDir.path}/presentation/viewmodels/${fileName}_viewmodel.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class ${className}ViewModel extends ChangeNotifier with UseCaseExecutor {
  final ${className}Usecase _${_toCamelCase(fileName)}Usecase;

  ${className}ViewModel({required ${className}Usecase ${_toCamelCase(fileName)}Usecase})
      : _${_toCamelCase(fileName)}Usecase = ${_toCamelCase(fileName)}Usecase;

  ${className}Response? _data;
  ${className}Response? get data => _data;

  Future<void> performAction() async {
    await execute(
      call: () => _${_toCamelCase(fileName)}Usecase(
        ${className}Params(
          param1: 'value1',
          param2: 'value2',
        ),
      ),
      onSuccess: (result) {
        _data = result;
        notifyListeners();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/presentation/viewmodels/${fileName}_viewmodel.dart');

  // ✅ 3. DataSource
  File('${featureDir.path}/data/datasources/remote_${fileName}_datasource.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

abstract interface class IRemote${className}DataSource {
  Future<${className}Response> performAction({required ${className}Params params});
}

class Remote${className}DataSourceImpl extends BaseRemoteDatasource
    implements IRemote${className}DataSource {
  Remote${className}DataSourceImpl({required super.dioHelper});

  @override
  Future<${className}Response> performAction({
    required ${className}Params params,
  }) async {
    return post(
      url: ApiEndPoints.${_toCamelCase(fileName)},
      parser: (json) => ${className}Response.fromJson(json),
      body: params.toJson(),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/data/datasources/remote_${fileName}_datasource.dart');

  // ✅ 4. Entity (created but not used)
  File('${featureDir.path}/domain/entities/${fileName}_entity.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class ${className}Entity {
  final String id;
  final String name;
  final String description;

  ${className}Entity({
    required this.id,
    required this.name,
    required this.description,
  });
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/domain/entities/${fileName}_entity.dart');

  // ✅ 5. UseCase - Using Response Model instead of Entity
  File('${featureDir.path}/domain/usecases/${fileName}_usecase.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class ${className}Usecase implements Usecase<${className}Response, ${className}Params> {
  final I${className}Repository repository;

  ${className}Usecase({required this.repository});

  @override
  Future<Either<AppException, ${className}Response>> call(${className}Params params) {
    return repository.performAction(params: params);
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/domain/usecases/${fileName}_usecase.dart');

  // ✅ 6. Repository Interface - Using Response Model
  File('${featureDir.path}/domain/repositories/${fileName}_repository.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

abstract interface class I${className}Repository {
  Future<Either<AppException, ${className}Response>> performAction({
    required ${className}Params params,
  });
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/domain/repositories/${fileName}_repository.dart');

  // ✅ 7. Repository Implementation - Using Response Model directly
  File(
      '${featureDir.path}/data/repository_impl/${fileName}_repository_impl.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''import '../../../../app_exports.dart';

class ${className}RepositoryImpl extends BaseRepository implements I${className}Repository {
  final IRemote${className}DataSource dataSource;

  ${className}RepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, ${className}Response>> performAction({
    required ${className}Params params,
  }) {
    return execute(
      call: () => dataSource.performAction(params: params),
    );
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/data/repository_impl/${fileName}_repository_impl.dart');

  // ✅ 8. Request Model (Params)
  File('${featureDir.path}/data/models/request_models/${fileName}_params.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class ${className}Params {
  final String param1;
  final String param2;

  ${className}Params({
    required this.param1,
    required this.param2,
  });

  Map<String, dynamic> toJson() {
    return {
      'param1': param1,
      'param2': param2,
    };
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/data/models/request_models/${fileName}_params.dart');

  // ✅ 9. Response Model
  File(
      '${featureDir.path}/data/models/response_models/${fileName}_response.dart')
    ..createSync(recursive: true)
    ..writeAsStringSync('''class ${className}Response {
  final String id;
  final String name;
  final String description;
  final bool success;

  ${className}Response({
    required this.id,
    required this.name,
    required this.description,
    required this.success,
  });

  factory ${className}Response.fromJson(Map<String, dynamic> json) {
    return ${className}Response(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      success: json['success'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'success': success,
    };
  }
}
''');
  logger.success(
      '🧱 Created: lib/features/$fileName/data/models/response_models/${fileName}_response.dart');
}

// ------------------------------------------------------------------
// 🧩 UPDATE ROUTES AUTOMATICALLY
// ------------------------------------------------------------------
void _updateRoutes(
  Directory libDir,
  String className,
  String fileName,
  Logger logger,
) {
  final routesDir = Directory('${libDir.path}/core/routes');

  // ✅ 1. Update route_names.dart
  final namesFile = File('${routesDir.path}/route_names.dart');
  if (namesFile.existsSync()) {
    String content = namesFile.readAsStringSync();

    if (!content.contains('static const String $fileName')) {
      final closingBrace = content.lastIndexOf('}');
      final newName = '  static const String $fileName = "$fileName";\n';
      content = content.substring(0, closingBrace) +
          newName +
          content.substring(closingBrace);

      namesFile.writeAsStringSync(content);
      logger.success('🧭 Updated: lib/core/routes/route_names.dart');
    } else {
      logger.warn('⚠️  Route name "$fileName" already exists');
    }
  }

  // ✅ 2. Update route_paths.dart
  final pathsFile = File('${routesDir.path}/route_paths.dart');
  if (pathsFile.existsSync()) {
    String content = pathsFile.readAsStringSync();

    if (!content.contains('static const String $fileName')) {
      final closingBrace = content.lastIndexOf('}');
      final newPath = '  static const String $fileName = "/$fileName";\n';
      content = content.substring(0, closingBrace) +
          newPath +
          content.substring(closingBrace);

      pathsFile.writeAsStringSync(content);
      logger.success('🧭 Updated: lib/core/routes/route_paths.dart');
    } else {
      logger.warn('⚠️  Route path "/$fileName" already exists');
    }
  }

  // ✅ 3. Update app_router.dart
  final routerFile = File('${routesDir.path}/app_router.dart');
  if (routerFile.existsSync()) {
    String content = routerFile.readAsStringSync();

    if (!content.contains('${className}Page()')) {
      // Find the routes array
      final routesStart = content.indexOf('routes: [');
      if (routesStart != -1) {
        final routesEnd = content.indexOf('],', routesStart);

        final newRoute = '''
      GoRoute(
        path: RoutePaths.$fileName,
        name: RouteNames.$fileName,
        builder: (context, state) => const ${className}Page(),
      ),''';

        content = content.substring(0, routesEnd) +
            newRoute +
            '\n    ' +
            content.substring(routesEnd);

        routerFile.writeAsStringSync(content);
        logger.success('🧭 Updated: lib/core/routes/app_router.dart');
      }
    } else {
      logger.warn('⚠️  Route for ${className}Page already exists');
    }
  }
}

// ------------------------------------------------------------------
// 🧩 UPDATE DEPENDENCY INJECTION AUTOMATICALLY
// ------------------------------------------------------------------
void _updateDependencyInjection(
  Directory libDir,
  String className,
  String fileName,
  Logger logger,
) {
  final diFile = File('${libDir.path}/core/di/injection_container.dart');

  if (!diFile.existsSync()) {
    logger.err('❌ injection_container.dart not found');
    return;
  }

  String content = diFile.readAsStringSync();

  // Check if dependencies already exist
  if (content.contains('${_toCamelCase(fileName)}Dependencies')) {
    logger.warn('⚠️  Dependencies for $fileName already exist');
    return;
  }

  // ✅ 1. Add the dependency function at the end of file (after all functions, before final closing brace)
  final newDependencyFunction = '''

/// $className Feature Dependencies
Future<void> ${_toCamelCase(fileName)}Dependencies() async {
  // DataSource
  sl.registerLazySingleton<IRemote${className}DataSource>(
    () => Remote${className}DataSourceImpl(dioHelper: sl()),
  );

  // Repository
  sl.registerLazySingleton<I${className}Repository>(
    () => ${className}RepositoryImpl(dataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton<${className}Usecase>(
    () => ${className}Usecase(repository: sl()),
  );

  // ViewModel
  sl.registerFactory<${className}ViewModel>(
    () => ${className}ViewModel(${_toCamelCase(fileName)}Usecase: sl()),
  );
}
''';

  // Find ALL top-level closing braces (}) and add after the last function
  final lines = content.split('\n');
  int lastFunctionEnd = -1;
  int braceCount = 0;
  bool inFunction = false;

  for (int i = 0; i < lines.length; i++) {
    final line = lines[i].trim();

    // Check if this is a function start
    if (line.contains('Future<void>') && line.contains('async')) {
      inFunction = true;
      braceCount = 0;
    }

    if (inFunction) {
      // Count braces
      braceCount += '{'.allMatches(line).length;
      braceCount -= '}'.allMatches(line).length;

      // If braces balanced, function ended
      if (braceCount == 0 && line.contains('}')) {
        lastFunctionEnd = i;
        inFunction = false;
      }
    }
  }

  // Insert new function after last function
  if (lastFunctionEnd != -1) {
    lines.insert(lastFunctionEnd + 1, newDependencyFunction);
    content = lines.join('\n');
  } else {
    // Fallback: add before last closing brace
    final lastBrace = content.lastIndexOf('}');
    content = content.substring(0, lastBrace) +
        newDependencyFunction +
        content.substring(lastBrace);
  }

  // ✅ 2. Add the function call in setupLocator
  final setupLocatorMatch =
      RegExp(r'Future<void> setupLocator\(\) async \{').firstMatch(content);

  if (setupLocatorMatch != null) {
    // Find the end of setupLocator function
    int braceCount = 0;
    int searchStart = setupLocatorMatch.end;
    int setupLocatorEnd = -1;

    for (int i = searchStart; i < content.length; i++) {
      if (content[i] == '{') {
        braceCount++;
      } else if (content[i] == '}') {
        if (braceCount == 0) {
          setupLocatorEnd = i;
          break;
        }
        braceCount--;
      }
    }

    if (setupLocatorEnd != -1) {
      final functionCall = '  await ${_toCamelCase(fileName)}Dependencies();\n';
      content = content.substring(0, setupLocatorEnd) +
          functionCall +
          content.substring(setupLocatorEnd);
    }
  }

  diFile.writeAsStringSync(content);
  logger.success('🧱 Updated: lib/core/di/injection_container.dart');
}

// ------------------------------------------------------------------
// 🧩 HELPER FUNCTIONS
// ------------------------------------------------------------------
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

String _toCamelCase(String text) {
  final words = text.split('_');
  if (words.isEmpty) return '';
  return words.first.toLowerCase() +
      words.skip(1).map((word) {
        if (word.isEmpty) return '';
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }).join('');
}
