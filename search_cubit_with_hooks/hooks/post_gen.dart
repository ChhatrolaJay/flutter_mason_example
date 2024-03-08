import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  final name = context.vars['name'];

  // Use the `Logger` instance.
  context.logger.info('Hello $name!');

  final path = context.vars['path'];

  // Use the `Logger` instance.
  context.logger.info('Path $path!');

  // Run `flutter packages get` after generation.
  await Process.run(path, ['flutter', 'pub', 'add', 'flutter_bloc']);
  await Process.run(path, [
    'flutter',
    'pub',
    'get',
  ]);

  progress.complete();
}
