import 'package:project3/project3.dart' as project3;


void main(List<String> arguments) {
  // print('Hello world: ${jobsheet3.calculate()}!');

  // belajar fixed list
  var list = List<int>.filled(
    5,
    0,
  ); //List<int> digunakan untuk mengisi data integer.

  list[0] = 10;
  list[1] = 20;
  list[2] = 30;
  list[3] = 40;
  // list[4] = 50;
  print("Data dalam list = $list ");
}
