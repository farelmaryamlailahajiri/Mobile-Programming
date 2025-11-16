import 'dart:io';

void main() {
  for (var i = 0; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print("iterasi ke- $i");
  }

    for (var i = 0; i <= 10; i++) {
    if (i % 2 != 0) {
      continue;
    }
    print("iterasi ke- $i");
  }
}
