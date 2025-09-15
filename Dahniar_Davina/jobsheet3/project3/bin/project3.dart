import 'dart:io';
import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {
  //print('Hello world: ${project3.calculate()}!');

  //fixed list
  /*var list = List<int>.filled(5, 0);

  list[0] = 10;
  list[1] = 20;
  list[2] = 30;
  list[3] = 40;
  list[4] = 50; //kalau tdk diisi, maka akan bernilai 0
  //list[5] = 60; //akan error, karena index melebihi ukuran list
  print("Data dalam list=$list");

  //insert fixed list 
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan list data ke-$i: ");
    var input = int.tryParse(stdin.readLineSync()!);
    list[i-1] = input ?? 0;
  }

  // Tampilkan hasil
  print("Data dalam list=$list");*/

  //growable list
  /*var grow = [];
  grow.add(20);
  grow.add(30);
  grow.add(40);
  grow.add(50);
  grow.remove(30); //menghapus data 30
  grow.add(10); //double tidak berpengaruh

  print("Data dalam growable list=$grow");*/

  //insert nilai growable list
  /*for (var i = 1; i <= 5; i++) {
    stdout.write("Masukkan list data nilai ke-$i: ");
    var input = int.tryParse(stdin.readLineSync()!);
    grow.insert(i-1, input ?? 0);
  }

  // Tampilkan hasil
  print("Data dalam list nilai=$grow");*/

  //growable list string
  /*var grow = [];

  for (var i = 0; i <= 4; i++) {
    stdout.write("Masukkan list data nama ke-$i: ");
    var input = stdin.readLineSync();
    if (input != null) {
      grow.add(input);
      print('Data dalam growable list ke: $i ${grow[i]}');
    }
  }

  // Tampilkan hasil
  print("Data dalam list nama=$grow");*/
  
  //var SET
  var angka = <int>[1,2,3,3,4,5];
  //var setA = {2};
  //print("Data dalam list angka = $setA");
  print("Data dalam list angka ${angka.elementAt(1)}");

  var angka2 = <int>[4,5,6,7,8];
  print("Data Union adalah = ${angka.union(angka2)}");
  print("Data Intersection adalah = ${angka.intersection(angka2)}");

  
}

