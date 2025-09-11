import 'dart:io';

void main(){
  // for
  for(int i = 0; i <= 10; i++){
    // break
    if(i == 5){
      break;
    }
    print("Iterasi ke $i");
  }

  // for
  for(int i = 0; i <= 10; i++){
    // continue
    if(i % 2 == 0){
      continue;
    }
    print("Iterasi ke $i");
  }
}