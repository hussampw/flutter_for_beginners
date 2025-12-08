/// var , final  ,  const, late , dynamic , String , int , double , bool , List , Map , Set 
/// const vs final , dynamic vs var , list vs set  , late initialization
/// if , else if , else , switch , case , default
/// for , while , do-while , break , continue
/// Functions with parameters and return types , Named parameters vs Positional parameters 
/// dart math  , dart collection libraries
/// comments: single-line, multi-line, documentation
/// Task: map, where, reduce, forEach
/// Widget Text  in Flutter to display outputs
/// on button press in flutter 
import 'dart:io';
late int a;
void main() {
  print("x"*50);
  
  // const x = 10;
  // final y ;
  // print("Enter a value for final variable y:");
  // y = stdin.readLineSync()!;
  // print('Const x: $x, Final y: $y');

  // a = int.parse(stdin.readLineSync()!);

  // if (a > 0) {
  //   print('$a is positive');
  // } else if (a < 0) {
  //   print('$a is negative');
  // } else {
  //   print('a is zero');
  // }

  double studenDegree = double.parse(stdin.readLineSync()!);
  switch (studenDegree) {
    case > 90 :
      print('A');
      break;
      default:
      print("Not Good");
  }
  print("First Print $studenDegree");
  print("Second Print ${studenDegree + 10}");
  print("Thred Print ${studenDegree++}");
  print("4 Print ${studenDegree--}");








}