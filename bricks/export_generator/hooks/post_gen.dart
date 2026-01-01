import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

void run(HookContext context) async {
  final directory = context.vars['directory'] as String;
  final exportFilePath = 'lib/app_exports.dart';

  final progress = context.logger.progress('Scanning for Dart files');

  try {
    // Get all dart files in the specified directory
    final libDir = Directory(directory);
    if (!libDir.existsSync()) {
      progress.fail('Directory $directory does not exist');
      return;
    }

    final dartFiles = <String>[];
    await for (final entity in libDir.list(recursive: true)) {
      if (entity is File &&
          entity.path.endsWith('.dart') &&
          !entity.path.endsWith('app_exports.dart') &&
          !entity.path.contains('.g.dart') &&
          !entity.path.contains('.freezed.dart')) {
        // Get relative path from lib directory
        var relativePath = path.relative(entity.path, from: directory);
        // Convert Windows backslashes to forward slashes for Dart imports
        relativePath = relativePath.replaceAll(r'\', '/');
        dartFiles.add(relativePath);
      }
    }

    // Sort files for consistent ordering
    dartFiles.sort();

    // Read existing exports if file exists
    final exportFile = File(exportFilePath);
    final existingExports = <String>{};

    if (exportFile.existsSync()) {
      final content = exportFile.readAsStringSync();
      final exportPattern = RegExp(r"export\s+'([^']+)';");
      final matches = exportPattern.allMatches(content);

      for (final match in matches) {
        existingExports.add(match.group(1)!);
      }
    }

    // Find new exports (files not already exported)
    final newExports =
        dartFiles.where((file) => !existingExports.contains(file)).toList();

    if (newExports.isEmpty && exportFile.existsSync()) {
      progress.complete('No new files to export');
      context.logger.info('✓ app_exports.dart is up to date');
      return;
    }

    // Generate export statements for all files (existing + new)
    final allExports = <String>[...existingExports, ...newExports];
    allExports.sort();

    final buffer = StringBuffer();
    buffer.writeln('// Generated file - exports all library files');
    buffer.writeln('// Run: mason make export_generator to update');
    buffer.writeln();

    for (final file in allExports) {
      buffer.writeln("export '$file';");
    }

    // Write to file
    exportFile.writeAsStringSync(buffer.toString());

    progress.complete('Export file updated');

    if (newExports.isNotEmpty) {
      context.logger.info('✓ Added ${newExports.length} new export(s):');
      for (final file in newExports) {
        context.logger.info('  + $file');
      }
    }

    context.logger.info('✓ Total exports: ${allExports.length}');
    context.logger.success('app_exports.dart updated successfully');
  } catch (e) {
    progress.fail('Error generating exports');
    context.logger.err(e.toString());
  }
}
