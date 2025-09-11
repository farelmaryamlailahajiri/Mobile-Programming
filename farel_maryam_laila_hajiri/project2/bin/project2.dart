import 'dart:io';

import 'package:project2/project2.dart' as project2;

void main(List<String> arguments) {
  // =========================================
    // 1. IF / ELSE + TERNARY
  // =========================================
  stdout.write("Masukkan nilai (0-100): ");
  String? input = stdin.readLineSync();
  int nilai = int.tryParse(input ?? "0") ?? 0;

  // IF/ELSE untuk cek lulus atau tidak
  if (nilai >= 60) {
    stdout.writeln("Hasil: LULUS");
  } else {
    stdout.writeln("Hasil: TIDAK LULUS");
  }

  // Ternary untuk tentukan grade
  String grade = (nilai > 80)
      ? "A"
      : (nilai >= 60 ? "B" : "C");
  stdout.writeln("Grade: $grade");
}
