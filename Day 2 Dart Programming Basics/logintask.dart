//logintask.dart

import 'dart:io';

void main(){
  print("="*50);
  print("*** Welcome to Login Task ***");
  while(true){
  print("Please enter your username:");
  String username = stdin.readLineSync()!;
  print("Please enter your password:");
  String password = stdin.readLineSync()!;
  print("="*50);
  if(username == "admin" && password == "1234"){
    print("Login Successful! Welcome, $username.");
    break;
  } else {
    print("Login Failed! Invalid username or password.");
  }
  }

}
bool check(String username, String password){
  if(username != "admin" || password != "1234"){
    return false;
  }
  return true;
}