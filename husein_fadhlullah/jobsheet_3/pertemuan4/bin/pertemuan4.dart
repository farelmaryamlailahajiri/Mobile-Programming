import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  //Belajar Fixed List
  var list = List<int>.filled(5,0);

  list[0] = 10;
  list[1] = 20;
  list[2] = 30;
  list[3] = 40;
  list[4] = 50;
  // list[5] = 100; //error karena index melebihi batas
  print("Data dalam list : $list");


}
