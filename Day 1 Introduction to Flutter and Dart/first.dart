//first.dart
String isMr(String name) {
  return name == "Ali" ? "Mr. $name" : name;
}
void main() {
  List students = ["Ali","Omar","Ahmed","Saeed" , "Salem" , "Fahad", "Zayed"];
  for (String student in students) {
    print("Hello ${1+1} 1+1");
  }
  Map<String, dynamic> greeting = {
    "name":"ali",
     "age":17  ,
     "isPresent":true
  };
  bool isPresent = false;
  String present = "AP";
  if(greeting['isPresent']){
    present = "Persent";
  }
  print("Ali is ${greeting['isPresent']?"Present":"Absent"} in class.");
}
String defVarible(){
  String hi = "Hello World";
  return hi;
}
String defVarible2()=>"Hello Dart";