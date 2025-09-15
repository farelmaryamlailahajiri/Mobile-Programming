import 'package:project3/project3.dart' as project3;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  //belajar fix list
  var list = List<int>.filled(5, 0);

  list[0] = 10;
  list[1] = 20;
  list[2] = 40;
  list[3] = 30;
  list[4] = 60;
  // list[5] = 60; eror karena yang tersedia hanya 5
  stdout.writeln("Data dari list: $list");


}
