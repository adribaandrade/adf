import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../repositories/product_repository.dart';
import '../../../repositories/student_repository.dart';

class InsertCommand extends Command {

final StudentRepository studentRepository;
final productRepository = ProductRepository();

@override
String get description => 'Insert Student';

@override
String get name => 'Insert';

InsertCommand(this.studentRepository) {
  argParser.addOption('file', help: 'Path of the csv file', abbr: 'f');
}

@override
void run() {
  print('Aguarde ...');
final filePath = argResults?['file'];
final students = File(filePath).readAsLinesSync();
print('------------------------');

for (var student in students) {
  print(student);
}
}
}