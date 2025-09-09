import 'dart:io';

import 'package:jobsheet3/jobsheet3.dart' as jobsheet3;

void main(List<String> arguments) {
  //IF ELSE
  int suhuTubuh = 35;
  if ((suhuTubuh>=37) && (suhuTubuh<=42)){
    print("Anda sakit demam");
  } else if ((suhuTubuh>= 35) && (suhuTubuh<37)){
    print("Suhu tubuh anda normal");
  } else if ((suhuTubuh>=28) && (suhuTubuh<35)){
    print("Anda terkena hipotermia");
  } else {
    print("Maaf suhu tubuh anda tidak teridentifikasi");
  }
}