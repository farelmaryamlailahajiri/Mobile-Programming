// 1. Eksperimen Tipe Data List
/* void main() {
    var list = [1, 2, 3];
    assert(list.length == 3); // Memastikan panjang list adalah 3
    assert(list[1] == 2); // Memastikan elemen kedua adalah 2
    print(list.length); 
    print(list[1]);

    list[1] = 1;
    assert(list[1] == 1);
    print(list[1]);
} */

/*  Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. 
    Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.
*/

/* void main() {
    final List<String?> list= List.filled(5, null);
    list[1] = "Alvi Choirinnikmah";
    list[2] = "2341760191";

    print(list);
} */

// 2. Eksperimen Tipe Data Set
/* void main() {
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);

    // Tambahkan kode
    var names1 = <String>{};
    Set<String> names2 = {};
    var names3 = <String>{};

    // Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll().
    names1.add("Alvi Choirinnikmah");
    names1.addAll(["2341760191"]);

    names2.add("Alvi Choirinnikmah");
    names2.addAll(["2341760191"]);

    names3.add("Alvi Choirinnikmah");
    names3.addAll(["2341760191"]);

    print(names1);
    print(names2);
    print(names3);
} */

// 3. Eksperimen Tipe Data Maps
void main() {
  var gifts = {
    // key : value
    'first': 'partridge',
    'second': 'turtledove',
    'fifth': 1,
  };

  var novleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(novleGases);
}
