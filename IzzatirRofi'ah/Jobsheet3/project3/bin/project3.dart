import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  // print('Hello world: ${project3.calculate()}!');

  // Belajar Fixed List
  var list = List<int>.filled(5, 0);
  
  list[0] = 10;
  list[1] = 11;
  list[2] = 12;
  list[3] = 13;
  list[4] = 14;
  // list[5] = 15; // error karena hanya berisi 5 data
  print("Data dalam list = $list");
}
