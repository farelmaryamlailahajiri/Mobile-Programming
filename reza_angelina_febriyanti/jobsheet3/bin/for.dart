import 'dart:io';

void main() {
  //For Loop
  for (int i = 0; i < 5; i++) {
    //Break pada loop
    /*
    if (i == 4) {
      break;
    } // hasil = 0 1 2 3
    */
    
    //Continue
    if (i%2 == 0) {
      continue;
    }
    print("Urutan ke $i"); //hasil continue = 1 3
    //tanpa break 0 1 2 3 4
  }
}