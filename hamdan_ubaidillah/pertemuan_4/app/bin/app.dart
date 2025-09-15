import 'dart:ffi';
import 'dart:io';

// import 'package:app/app.dart' as app;

void main(List<String> arguments) {
  // List<int> list = List<int>.filled(5, 0);

  // list[0] = 1;
  // list[1] = 2;
  // list[2] = 3;
  // list[3] = 4;
  // list[4] = 5;

  // for (int i = 0; i < list.length; i++) {
  //   list[i] = int.tryParse(number ?? "") ?? 0;
  // }
  //   String? number = stdin.readLineSync();

  // List<String> grow = [];

  // for (int i = 0; i < 5; i++) {
  //   String? mhs = stdin.readLineSync();
  //   grow.add(mhs ?? "");
  // }

  // print("data : ${x.elementAt(1)}");

  // Set x = <int>{1, 2, 3, 4, 5};
  // Set y = <int>{4, 5, 6, 7, 8};
  // print("data union ${x.union(y)}");
  // print("data intersect ${x.intersection(y)}");

  // Map<String, Object> mhs = {"name": "ujang", "umur": 20};
  // print(mhs["name"]);
  // mhs["nim"] = "23";
  // print(mhs);
  // mhs["name"] = "tatang";
  // print(mhs);

  // var x = (1, 2, "ujang");
  // var x = (name: "tatang", age: 2);
  // Record x = (1, 2);
  // print(x);

  // greet("Name", 20, "Pandaan");

  var lists = [1, 2, 3];

  lists.forEach((list) {
    print(list);
  });
}

// void greet(String name, int age, [String? address]) {
//   print("Nama: $name\nUmur: $age");
//   if (address != null) {
//     print("Alamat: $address");
//   }
// }
