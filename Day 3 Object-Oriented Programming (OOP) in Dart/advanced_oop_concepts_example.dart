// ============================================
// Advanced Dart OOP Concepts
// ============================================

void main() {
  print('=== Classes and Objects ===');
  
  // Creating objects
  var person = Person('Ahmed', 25);
  person.introduce();
  
  // Using getters and setters
  person.age = 26;
  print('Updated age: ${person.age}');
  
  print('\n=== Inheritance ===');
  
  var student = Student('Sara', 20, 'Computer Science');
  student.introduce();
  student.study();
  
  var teacher = Teacher('Dr. Omar', 45, 'Mathematics');
  teacher.introduce();
  teacher.teach();
  
  print('\n=== Polymorphism ===');
  
  // Using polymorphism - treating different objects as base type
  List<Person> people = [
    Person('Ali', 30),
    Student('Fatima', 22, 'Physics'),
    Teacher('Dr. Hassan', 50, 'Chemistry'),
  ];
  
  for (var p in people) {
    p.introduce();  // Each calls its own version
  }
  
  print('\n=== Abstract Classes ===');
  
  // Cannot instantiate abstract class directly
  // Shape shape = Shape(); // Error!
  
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);
  
  print('Circle area: ${circle.area()}');
  print('Circle perimeter: ${circle.perimeter()}');
  print('Rectangle area: ${rectangle.area()}');
  print('Rectangle perimeter: ${rectangle.perimeter()}');
  
  print('\n=== Interfaces (Implicit) ===');
  
  var smartphone = Smartphone();
  smartphone.call('123-456-7890');
  smartphone.browse('www.google.com');
  smartphone.takePhoto();
  
  print('\n=== Mixins ===');
  
  var duck = Duck();
  duck.walk();
  duck.swim();
  duck.fly();
  duck.quack();
  
  var penguin = Penguin();
  penguin.walk();
  penguin.swim();
  penguin.slide();
  
  print('\n=== Static Members ===');
  
  print('Total persons created: ${Person.totalPersons}');
  print('Default species: ${Person.species}');
  Person.showStatistics();
  
  print('\n=== Factory Constructors ===');
  
  var logger1 = Logger();
  var logger2 = Logger();
  print('Same instance? ${identical(logger1, logger2)}');  // true - Singleton
  
  logger1.log('First message');
  logger2.log('Second message');
  
  print('\n=== Enums ===');
  
  var today = Day.sunday;
  print('Today is: ${today.name}');
  print('Is weekend? ${today.isWeekend}');
  print('Day number: ${today.dayNumber}');
  
  var status = OrderStatus.shipped;
  print('Order status: ${status.displayName}');
  
  print('\n=== Operator Overloading ===');
  
  var v1 = Vector(3, 4);
  var v2 = Vector(1, 2);
  var v3 = v1 + v2;
  print('Vector addition: $v3');
  print('v1 == v2? ${v1 == v2}');
  print('v1 magnitude: ${v1.magnitude}');
  
  print('\n=== Extension Methods ===');
  
  String text = 'hello world';
  print('Capitalized: ${text.capitalize()}');
  print('Word count: ${text.wordCount}');
  
  int number = 5;
  print('$number squared: ${number.squared}');
  print('$number is even? ${number.isEven}');
}

// ============================================
// Basic Class with Encapsulation
// ============================================
class Person {
  // Static members
  static int totalPersons = 0;
  static const String species = 'Homo Sapiens';
  
  // Private field (use _ prefix)
  String _name;
  int _age;
  
  // Constructor
  Person(this._name, this._age) {
    totalPersons++;
  }
  
  // Named constructor
  Person.guest() : _name = 'Guest', _age = 0 {
    totalPersons++;
  }
  
  // Getters
  String get name => _name;
  int get age => _age;
  
  // Setter with validation
  set age(int value) {
    if (value >= 0 && value <= 150) {
      _age = value;
    }
  }
  
  // Method
  void introduce() {
    print('Hi, I am $_name and I am $_age years old.');
  }
  
  // Static method
  static void showStatistics() {
    print('Total persons: $totalPersons');
  }
}

// ============================================
// Inheritance
// ============================================
class Student extends Person {
  String major;
  
  Student(String name, int age, this.major) : super(name, age);
  
  // Method overriding
  @override
  void introduce() {
    print('Hi, I am $name, a $age year old student studying $major.');
  }
  
  void study() {
    print('$name is studying $major.');
  }
}

class Teacher extends Person {
  String subject;
  
  Teacher(String name, int age, this.subject) : super(name, age);
  
  @override
  void introduce() {
    print('Hello, I am $name, a teacher of $subject.');
  }
  
  void teach() {
    print('$name is teaching $subject.');
  }
}

// ============================================
// Abstract Classes
// ============================================
abstract class Shape {
  // Abstract methods - must be implemented by subclasses
  double area();
  double perimeter();
  
  // Concrete method
  void describe() {
    print('This is a shape with area ${area()}');
  }
}

class Circle extends Shape {
  double radius;
  
  Circle(this.radius);
  
  @override
  double area() => 3.14159 * radius * radius;
  
  @override
  double perimeter() => 2 * 3.14159 * radius;
}

class Rectangle extends Shape {
  double width;
  double height;
  
  Rectangle(this.width, this.height);
  
  @override
  double area() => width * height;
  
  @override
  double perimeter() => 2 * (width + height);
}

// ============================================
// Interfaces (Implicit in Dart)
// ============================================
abstract class Phone {
  void call(String number);
}

abstract class Browser {
  void browse(String url);
}

abstract class Camera {
  void takePhoto();
}

// Implementing multiple interfaces
class Smartphone implements Phone, Browser, Camera {
  @override
  void call(String number) {
    print('Calling $number...');
  }
  
  @override
  void browse(String url) {
    print('Browsing $url...');
  }
  
  @override
  void takePhoto() {
    print('Taking photo... 📸');
  }
}

// ============================================
// Mixins
// ============================================
mixin Walker {
  void walk() => print('Walking... 🚶');
}

mixin Swimmer {
  void swim() => print('Swimming... 🏊');
}

mixin Flyer {
  void fly() => print('Flying... 🦅');
}

class Bird {
  String name = 'Bird';
}

class Duck extends Bird with Walker, Swimmer, Flyer {
  void quack() => print('Quack! 🦆');
}

class Penguin extends Bird with Walker, Swimmer {
  void slide() => print('Sliding on ice! 🐧');
}

// ============================================
// Factory Constructor (Singleton Pattern)
// ============================================
class Logger {
  static final Logger _instance = Logger._internal();
  
  // Private constructor
  Logger._internal();
  
  // Factory constructor returns existing instance
  factory Logger() {
    return _instance;
  }
  
  void log(String message) {
    print('[LOG] ${DateTime.now()}: $message');
  }
}

// ============================================
// Enhanced Enums (Dart 2.17+)
// ============================================
enum Day {
  sunday(1),
  monday(2),
  tuesday(3),
  wednesday(4),
  thursday(5),
  friday(6),
  saturday(7);
  
  final int dayNumber;
  const Day(this.dayNumber);
  
  bool get isWeekend => this == Day.friday || this == Day.saturday;
}

enum OrderStatus {
  pending('Pending'),
  processing('Processing'),
  shipped('Shipped'),
  delivered('Delivered'),
  cancelled('Cancelled');
  
  final String displayName;
  const OrderStatus(this.displayName);
}

// ============================================
// Operator Overloading
// ============================================
class Vector {
  final double x;
  final double y;
  
  Vector(this.x, this.y);
  
  // Overload + operator
  Vector operator +(Vector other) {
    return Vector(x + other.x, y + other.y);
  }
  
  // Overload == operator
  @override
  bool operator ==(Object other) {
    if (other is Vector) {
      return x == other.x && y == other.y;
    }
    return false;
  }
  
  @override
  int get hashCode => x.hashCode ^ y.hashCode;
  
  double get magnitude => (x * x + y * y);
  
  @override
  String toString() => 'Vector($x, $y)';
}

// ============================================
// Extension Methods
// ============================================
extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
  
  int get wordCount => split(' ').length;
}

extension IntExtension on int {
  int get squared => this * this;
  bool get isEven => this % 2 == 0;
}
