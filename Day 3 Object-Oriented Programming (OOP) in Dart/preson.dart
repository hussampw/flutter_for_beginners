class Person {
  //properties
  String firstName;
  String lastName;
  int? age;

//constructor
  Person(int age , this.firstName, this.lastName){
    this.age = age;
  }
  Person.newBorn(this.firstName, this.lastName){
    this.age = 0;
  }
  String get fullName => "$firstName $lastName";
  
  String getfullName(){
    return "$firstName $lastName";
  }
  //method
  void introduce() {
    print("My name is ${this.firstName} ${this.lastName} and I am $age years old.");
  }
}