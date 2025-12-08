class Rectangle{
double height;
double width;
String? color;
Rectangle(this.height,this.width);
//  double area(){
//    return height*width;  }
 double get area => height*width;
 
}
mixin A {
  void showA() {
    print("Mixin A method");
  }
}
void main() {
  main2();
 
  Rectangle rec = Rectangle(10, 20);
  print('Area of rectangle: ${rec.area}');
  print("Area of rectangle: ${Area(10,20).x*Area(10,20).y}");

}
class Area{
  final double x;
  final double y;
  Area(double x,double y):x=x*2 , y=y{
    //this.x = x *2;
    print("Hi there Area is ${x*y}");
  }
}
class Logger {
  static final Logger _instance = Logger._internal();

  // Private constructor
  Logger._internal();

  // Public getter
  static Logger get instance => _instance;

  void log(String message) {
    print("Log: $message");
  }
}

void main2() {
  var log1 = Logger.instance;
  var log2 = Logger.instance;

  print(identical(log1, log2)); // true → نفس object
  List<Shape> shapes = [
    Circle(5),
    Square(4),
    Trangle(3,6)
  ];
  for (var shape in shapes) {
    print('Area: ${shape.area()}');
  }
}
class Shape {
  double area() => 0;
}
class Circle extends Shape {
  double radius;
  Circle(this.radius);
  
  @override
  double area() => 3.14 * radius * radius;
}
class Square extends Shape {
  double side;
  Square(this.side);
  
  @override
  double area() => side * side;
  
}
class Trangle extends Shape {
  double base;
  double height;
  Trangle(this.base,this.height);
  
  @override
  double area() => 0.5 * base * height;
}

abstract class Animal {
  void makeSound();
}