import 'dart:io';

import 'package:app/app.dart' as app;

void main(List<String> arguments) {
  List<int> list = List<int>.filled(5, 0);

  for (int i = 0; i < list.length; i++) {
    String? number = stdin.readLineSync();
    list[i] = int.tryParse(number ?? "") ?? 0;
  }

  print(list);
}
