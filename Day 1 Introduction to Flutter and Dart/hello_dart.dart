/// =====================================================
/// 🎯 Day 1 - Example 1: Hello Dart!
/// Introduction to Dart Programming Language
/// =====================================================

// This is your first Dart program!
// Let's explore the basics of Dart syntax

void main() {
  // 👋 Printing to the console
  print('Hello, Dart! 🚀');
  print('Welcome to Flutter for Beginners Course');
  print('');

  // =====================================================
  // 📦 Variables in Dart
  // =====================================================

  // Using 'var' - Dart infers the type automatically
  var courseName = 'Flutter for Beginners';
  var totalDays = 5;
  var hoursPerDay = 5.0;

  // Using explicit types
  String instructor = 'Hussam';
  int totalHours = 25;
  double rating = 4.9;
  bool isOnline = true;

  print('📚 Course: $courseName');
  print('👨‍🏫 Instructor: $instructor');
  print('📅 Duration: $totalDays days ($totalHours hours)');
  print('⭐ Rating: $rating');
  print('🌐 Online: $isOnline');
  print('');

  // =====================================================
  // 🔢 Basic Data Types
  // =====================================================

  // int - Integer numbers
  int studentsEnrolled = 150;

  // double - Decimal numbers
  double progress = 75.5;

  // String - Text
  String welcomeMessage = 'Welcome to Day 1!';

  // bool - True or False
  bool hasStarted = true;

  print('=== Data Types Demo ===');
  print('Students: $studentsEnrolled (int)');
  print('Progress: $progress% (double)');
  print('Message: $welcomeMessage (String)');
  print('Started: $hasStarted (bool)');
  print('');

  // =====================================================
  // 🧮 Basic Operations
  // =====================================================

  int a = 10;
  int b = 3;

  print('=== Arithmetic Operations ===');
  print('a = $a, b = $b');
  print('Addition: $a + $b = ${a + b}');
  print('Subtraction: $a - $b = ${a - b}');
  print('Multiplication: $a * $b = ${a * b}');
  print('Division: $a / $b = ${a / b}');
  print('Integer Division: $a ~/ $b = ${a ~/ b}');
  print('Modulus: $a % $b = ${a % b}');
  print('');

  // =====================================================
  // 📝 String Interpolation
  // =====================================================

  String firstName = 'Flutter';
  String lastName = 'Developer';

  // Using $ for simple variables
  print('I am a $firstName $lastName');

  // Using ${} for expressions
  print('2 + 2 = ${2 + 2}');
  print('Course name in UPPERCASE: ${courseName.toUpperCase()}');

  print('');
  print('🎉 Congratulations! You completed your first Dart lesson!');
}
