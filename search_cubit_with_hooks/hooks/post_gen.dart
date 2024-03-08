import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  final path = context.vars['path'];

  // Use the `Logger` instance.
  context.logger.info('Adding packages to Path- $path!');

  // This will add the flutter_bloc to pubspec file.
  await Process.run(path, ['flutter', 'pub', 'add', 'flutter_bloc']);
  await Process.run(path, [
    'flutter',
    'pub',
    'get',
  ]);

  progress.complete();
}
