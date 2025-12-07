/// =====================================================
/// 🎯 Day 2 - Example 3: Comments, Libraries & Code Organization
/// Best Practices for Clean, Maintainable Dart Code
/// =====================================================
///
/// This file demonstrates:
/// - Different types of comments
/// - Importing libraries
/// - Code organization patterns
/// - Documentation best practices
///
/// Author: Flutter for Beginners Course
/// Date: 2024
/// =====================================================

// 📚 Importing Dart Core Libraries
import 'dart:math'; // Mathematical functions
import 'dart:collection'; // Advanced collections

// 📦 In a real project, you might import:
// import 'dart:async';        // Async programming
// import 'dart:convert';      // JSON encoding/decoding
// import 'dart:io';           // File I/O operations

// 🎯 Main Function - Entry Point
void main() {
  print('📝 Comments, Libraries & Code Organization');
  print('=' * 50);
  print('');

  // =====================================================
  // 💬 Types of Comments
  // =====================================================

  print('💬 Types of Comments in Dart:');
  print('-' * 40);

  // 1. Single-line comment (starts with //)
  // This is a single-line comment
  print('1. Single-line: // This is a comment');

  // 2. Multi-line comment (/* ... */)
  /* 
   * This is a multi-line comment.
   * It can span multiple lines.
   * Useful for longer explanations.
   */
  print('2. Multi-line: /* ... */');

  // 3. Documentation comment (starts with ///)
  /// This is a documentation comment.
  /// It's used for API documentation.
  /// Supports Markdown formatting.
  print('3. Documentation: /// For API docs');
  print('');

  // =====================================================
  // 📚 Using dart:math Library
  // =====================================================

  print('📚 Using dart:math Library:');
  print('-' * 40);

  // Constants from dart:math
  print('  π (pi) = $pi');
  print('  e (Euler\'s number) = $e');
  print('  √2 = $sqrt2');
  print('');

  // Random number generation
  Random random = Random();
  print('  Random int (0-100): ${random.nextInt(100)}');
  print('  Random double (0-1): ${random.nextDouble().toStringAsFixed(4)}');
  print('  Random bool: ${random.nextBool()}');
  print('');

  // Math functions
  print('  Math Functions:');
  print('    max(10, 20) = ${max(10, 20)}');
  print('    min(10, 20) = ${min(10, 20)}');
  print('    pow(2, 8) = ${pow(2, 8)}');
  print('    sqrt(64) = ${sqrt(64)}');
  print('    sin(π/2) = ${sin(pi / 2)}');
  print('    log(e) = ${log(e)}');
  print('');

  // =====================================================
  // 📦 Using dart:collection Library
  // =====================================================

  print('📦 Using dart:collection Library:');
  print('-' * 40);

  // Queue - First In, First Out (FIFO)
  Queue<String> printQueue = Queue();
  printQueue.add('Document 1');
  printQueue.add('Document 2');
  printQueue.add('Document 3');

  print('  Print Queue: $printQueue');
  print('  First item: ${printQueue.first}');
  print('  Removed: ${printQueue.removeFirst()}');
  print('  After removal: $printQueue');
  print('');

  // LinkedHashMap - Maintains insertion order
  LinkedHashMap<String, int> orderedScores = LinkedHashMap();
  orderedScores['Alice'] = 95;
  orderedScores['Bob'] = 87;
  orderedScores['Charlie'] = 92;

  print('  Ordered Scores (insertion order maintained):');
  orderedScores.forEach((name, score) {
    print('    $name: $score');
  });
  print('');

  // =====================================================
  // 🏗️ Code Organization - Classes
  // =====================================================

  print('🏗️ Code Organization - Well-Structured Code:');
  print('-' * 40);

  // Using our organized classes
  var student = Student(
    id: 'STU001',
    name: 'Ahmed Ali',
    email: 'ahmed@example.com',
    grade: 'A',
  );

  student.displayInfo();
  print('');

  // Calculator with static methods
  print('  Calculator (Static Methods):');
  print('    add(5, 3) = ${Calculator.add(5, 3)}');
  print('    subtract(10, 4) = ${Calculator.subtract(10, 4)}');
  print('    multiply(6, 7) = ${Calculator.multiply(6, 7)}');
  print('    divide(20, 4) = ${Calculator.divide(20, 4)}');
  print('');

  // =====================================================
  // 📋 Best Practices Summary
  // =====================================================

  print('📋 Code Organization Best Practices:');
  print('-' * 40);

  List<String> bestPractices = [
    '📁 Organize files by feature/module',
    '📝 Use meaningful names for variables & functions',
    '💬 Add comments to explain WHY, not WHAT',
    '📚 Use /// for public API documentation',
    '🔧 Keep functions small and focused',
    '📦 Group related code into classes',
    '🎯 Follow consistent naming conventions',
    '🧹 Remove unused imports and code',
    '✅ Test your code regularly',
    '📖 Write self-documenting code',
  ];

  for (int i = 0; i < bestPractices.length; i++) {
    print('  ${i + 1}. ${bestPractices[i]}');
  }
  print('');

  // =====================================================
  // 📛 Dart Naming Conventions
  // =====================================================

  print('📛 Dart Naming Conventions:');
  print('-' * 40);

  print('''
  ✓ Classes/Enums:    PascalCase     (UserAccount, OrderStatus)
  ✓ Variables:        camelCase      (userName, orderTotal)
  ✓ Functions:        camelCase      (calculateTotal, getUserById)
  ✓ Constants:        lowerCamelCase (maxRetries, defaultTimeout)
  ✓ Private:          _prefix        (_privateVar, _helperMethod)
  ✓ Files:            snake_case     (user_account.dart)
  ✓ Libraries:        snake_case     (my_library)
  ''');

  // =====================================================
  // 🎯 Practical Example - Todo App Structure
  // =====================================================

  print('🎯 Example: Todo App File Structure:');
  print('-' * 40);

  String projectStructure = '''
  📁 lib/
  ├── 📁 models/
  │   ├── todo.dart
  │   └── user.dart
  ├── 📁 services/
  │   ├── api_service.dart
  │   └── storage_service.dart
  ├── 📁 screens/
  │   ├── home_screen.dart
  │   ├── todo_list_screen.dart
  │   └── settings_screen.dart
  ├── 📁 widgets/
  │   ├── todo_card.dart
  │   └── custom_button.dart
  ├── 📁 utils/
  │   ├── constants.dart
  │   └── helpers.dart
  └── main.dart
  ''';

  print(projectStructure);

  print('=' * 50);
  print('✅ Day 2 - Example 3 Complete!');
  print('');
  print('🎉 Congratulations on completing Day 2!');
  print('   You\'ve learned loops, functions, and code organization!');
}

// =====================================================
// 📚 Well-Organized Class Example
// =====================================================

/// Represents a student in the system.
///
/// This class demonstrates proper documentation and organization.
/// Use this as a template for your own classes.
///
/// Example:
/// ```dart
/// var student = Student(
///   id: 'STU001',
///   name: 'John Doe',
///   email: 'john@example.com',
///   grade: 'A',
/// );
/// ```
class Student {
  // ===== Properties =====

  /// Unique identifier for the student
  final String id;

  /// Full name of the student
  final String name;

  /// Email address for communication
  final String email;

  /// Current grade (A, B, C, D, F)
  String grade;

  // ===== Constructor =====

  /// Creates a new Student instance.
  ///
  /// All parameters are required except [grade] which defaults to 'N/A'.
  Student({
    required this.id,
    required this.name,
    required this.email,
    this.grade = 'N/A',
  });

  // ===== Methods =====

  /// Displays formatted student information
  void displayInfo() {
    print('  ┌─────────────────────────────┐');
    print('  │  📋 Student Information     │');
    print('  ├─────────────────────────────┤');
    print('  │  ID: $id');
    print('  │  Name: $name');
    print('  │  Email: $email');
    print('  │  Grade: $grade');
    print('  └─────────────────────────────┘');
  }

  /// Updates the student's grade
  void updateGrade(String newGrade) {
    grade = newGrade;
  }

  /// Returns a string representation
  @override
  String toString() => 'Student($id, $name, $grade)';
}

// =====================================================
// 🧮 Utility Class with Static Methods
// =====================================================

/// A utility class for mathematical operations.
///
/// All methods are static, so no instance is needed.
/// Usage: `Calculator.add(5, 3)`
class Calculator {
  // Private constructor prevents instantiation
  Calculator._();

  /// Adds two numbers
  static double add(num a, num b) => (a + b).toDouble();

  /// Subtracts b from a
  static double subtract(num a, num b) => (a - b).toDouble();

  /// Multiplies two numbers
  static double multiply(num a, num b) => (a * b).toDouble();

  /// Divides a by b (returns 0 if b is 0)
  static double divide(num a, num b) {
    if (b == 0) return 0;
    return a / b;
  }

  /// Calculates percentage
  static double percentage(num value, num total) {
    if (total == 0) return 0;
    return (value / total) * 100;
  }
}
