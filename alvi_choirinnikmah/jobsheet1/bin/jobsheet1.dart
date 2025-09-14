import 'package:jobsheet1/jobsheet1.dart' as jobsheet1;
import 'dart:io'; // import berikut ditambahkan untuk stdout yang digunakan untuk menampilkan output di console

// const example 
const String nama = 'Alvi';
const pi = 3.14;

void main(List<String> arguments) {
  // print('Hello world: ${jobsheet1.calculate()}!');

  // 1. Comments digunakan untuk memberikan penjelasan atau catatan kode 
  // Line satu baris
  /*
    Multi line
  */

  // 2. Variabel digunakan untuk menyimpan data sementara
  var campus = 'Politeknik Negeri Malang';
  var jurusan = 'Sistem Informasi Bisnis';
  var semester = 5;
  stdout.writeln("Saya kuliah di $campus jurusan $jurusan semester $semester");

  // 3. Constanta dan final digunakan untuk menyimpan data yang tidak bisa diubah
  /* Constanta digunakan untuk menyimpan data yang nilainya sudah ditentukan sejak compile time dan tidak bisa diubah setelah itu
  final digunakan untuk menyimpan data yang nilainya ditentukan saat runtime dan tidak bisa diubah setelah itu */
  final String nama2 = 'Choirinnikmah';
    print("Nama saya $nama $nama2");

  final radius = 14;
    print('Circle Area radius $radius = ${jobsheet1.calculatesArea(radius)}');

  // 4. Data Tyape
  int umur = 20; 
  double tinggi = 163;
  num berat = 56; // bisa diisi bilangan bulat atau decimal
  bool jenis_kelamin = false; // true = laki-laki, false = perempuan
  String alamat = 'Jl. Kembang Turi No. 3A 20A';
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  // stdout.writeln("Jenis kelamin saya ${jenis_kelamin ? 'Laki-laki' : 'Perempuan'}");
  if (jenis_kelamin==true) {
    stdout.writeln("Jenis kelamin saya Laki-laki");
  } else {
    stdout.writeln("Jenis kelamin saya Perempuan");
  }
  stdout.writeln("Nama saya $nama $nama2");
  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln("Berat badan saya $berat kg");
  stdout.writeln("Jenis kelamin $jenis_kelamin ? 'Laki-laki' : 'Perempuan'}");
  stdout.writeln("Almat $alamat");

  // Type data list digunakan untuk menyimpan beberapa data dalam satu variabel
  List<String> hobby = ["Menonton", "Mendengarkan Music", "Ngoding"];
  hobby.add("Tidur"); 
  stdout.writeln("Hobby saya adalah $hobby");

  // Type data map digunakan untuk menyimpan beberapa data dalam satu variabel dengan key dan value
  Map<String, String> data = {
    "nama": "Alvi",
    "alamat": "Jl. Kembang Turi No. 3A 20A",
    "jenis_kelamin": "Perempuan",
    "umur": "20" // lebih baik string dulu terus baru dikonversi ke int
  };
  data["pekerjaan"] = "manager";
  data.addAll({"hobby": "Menonton"});
  stdout.writeln("Data : $data");
  stdout.writeln("Nama saya ${data['nama']}");
  stdout.writeln("${data['hobby']} adalah hobby saya");

  dynamic bebas = "16"; // bisa diisi dengan tipe data apapun
  stdout.writeln("Nilai dari dynamic adalah $bebas");

  // 5. Operators
  // Arithmetic
  int a = 10, b = 5;
  print('a + b = ${a + b}'); // Addition
  print('a - b = ${a - b}'); // Subtraction
  print('a * b = ${a * b}'); // Multiplication
  print('a / b = ${a / b}'); // Divide
  print('a ~/ b = ${a ~/ b}'); // Divide, return integer
  print('a % b = ${a % b}'); // Modulo
  a++; // Increment
  print('a++ = $a');
  b--; // Decrement
  print('b-- = $b');

  // Comparison
  print('a == b: ${a == b}'); // Equals
  print('a != b: ${a != b}'); // Not Equal
  print('a > b: ${a > b}'); // Greater than
  print('a < b: ${a < b}'); // Less than
  print('a >= b: ${a >= b}'); // Greater or equals
  print('a <= b: ${a <= b}'); // Less or equals

  // Logic
  bool x = true, y = false;
  print('x || y: ${x || y}'); // OR
  print('x && y: ${x && y}'); // AND
  print('!x: ${!x}'); // NOT

  // 6. Exceptions
  // Akan muncul output Unhandled exception: IntegerDivisionByZeroException dikarenakan pembagian dengan nol tidak terdefinisi
  // var num1 = 7;
  // var num2 = 0;
  // print(num1 ~/ num2);

  // Jika menggunakan try - on, catch - finally, maka program tidak akan berhenti dan menampilkan pesan error yang sudah ditentukan
  try {
  // Code that might throw an exception
  int result = 10 ~/ 0; // This will throw an IntegerDivisionByZeroException
  } on IntegerDivisionByZeroException {
  // Handles the specific IntegerDivisionByZeroException
  print("Cannot divide by zero!");
  } catch (e) {
  // Handles any other type of exception and provides the exception object
  print("An unexpected error occurred: $e");
  } finally {
  // Code that always executes, regardless of whether an exception occurred
  print("Execution complete.");
  }

  // 7. Null Safety 
  // String jumlah; variabel yang bisa bernilai null harus diberi tanda tanya (?) setelah tipe data.Jika tidak, akan error 
  String? jumlah;
  print(jumlah);
  String? kendaraan;
  stdout.writeln("Kendaraan $kendaraan"); // jika kendaraan bernilai null, maka akan menampilkan Motor
}
