import 'dart:io';
import 'dart:math';
void main(){
 while(true){
   print("="*50);  
  print("Enter an option:\n\t1. Who Am I?\n\t2. Guess the Number\n\t3. Exit\n");
  String? choice = stdin.readLineSync()!;
  if(choice == '1'){
    whoAmI();
  } else if(choice == '2'){
    guessTheNumber();
  } else {
    print("Exiting the program. Goodbye!");
    break;
  }
 }
}
void whoAmI(){
  print("="*50);
  print("*** Who Am I? ***");

  print("My name is Mr . Hussam .");
  print("="*50);
}
void guessTheNumber(){
  print("="*50);
  print("*** Guess the Number ***");
   int numberToGuess = Random().nextInt(100) + 1;
  print("The number to I guees it to you: $numberToGuess");
  print("="*50);
}