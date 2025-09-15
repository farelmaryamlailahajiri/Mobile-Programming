import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  //print('Hello world: ${project3.calculate()}!');

  // Belajar Fixed List
  var list = List<int>.filled(5, 0);

  list[0] = 10;
  list[1] = 20;
  list[2] = 30;
  list[3] = 40;
  list[4] = 50;
  //list[5] = 60; // list tidak masuk dalam ruang
  print("Data dalam list = $list");
}
