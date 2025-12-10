//logintask.dart

import 'dart:io';
import 'dart:math';
void main(){
  main2();
  return;
  print("="*50);
  print("*** Welcome to Login Task ***");
  while(true){
  print("Please enter your username:");
  String username = stdin.readLineSync()!;
  print("Please enter your password:");
  String password = stdin.readLineSync()!;
  print("="*50);
  //if(username == "admin" && password == "1234"){
  if(check(username, password)){
   
    print("Login Successful! Welcome, $username.");
    break;
  } else {
    print("Login Failed! Invalid username or password.");
  }
  }

}
bool check(String u, String password){
  if(u != "admin" || password != "1234"){
    return false;
  }
  return true;
}
bool check2(String username, String password) => username == "admin" && password == "1234";

void main2(){
  print("="*50);
print("Pow of x and y is: ${pow(2,3)}");
print("Sqrt of x and y is: ${sqrt(81)}");
print("Random number between 0 and 100: ${Random().nextInt(100)}");
print("="*50);

}