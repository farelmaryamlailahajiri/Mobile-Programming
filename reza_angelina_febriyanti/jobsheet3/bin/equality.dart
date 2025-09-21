import 'dart:io';

void main() {
  //Equality Checking
  int a = 5;
  int b = 15;
  print(a == b); //false
  print(a != b); //true

  //Equality Checking with String
  String a1 = "Hello";
  String b1 = "Hello";
  print(a1 == b1); //true
  print(a1 != b1); //false
  print(identical(a1, b1)); //true

  //Equality Checking with List
  List<int> a2 = [1, 2, 3];
  List<int> b2 = [1, 2, 3];
  print(a2 == b2); //false
  print(a2 != b2); //true
  // mengeceknya apakah berada ditempat yg sama, bukan isinya
  print(identical(a2, b2)); //false

  //Type Coercion
  String a3 = "5";
  int b3 = 5;
  //Konversi String ke Int
  int parsed = int.parse(a3);
  print(parsed == b3); //true

  // konversi int ke String
  print(a3 == b3.toString()); // true
}