/// =====================================================
/// 🎯 Day 2 - Example 1: Variables & Conditional Statements
/// Data Types and Decision Making in Dart
/// =====================================================

void main() {
  print('📦 Variables, Data Types & Conditionals');
  print('=' * 50);
  print('');

  // =====================================================
  // 📊 All Data Types in Dart
  // =====================================================

  print('📊 Dart Data Types:');
  print('-' * 40);

  // Numbers
  int age = 25; // Whole numbers
  double price = 99.99; // Decimal numbers
  num quantity = 10; // Can be int or double

  print('int age = $age');
  print('double price = $price');
  print('num quantity = $quantity');
  print('');

  // Strings
  String firstName = 'Mohammed';
  String lastName = "Ali"; // Single or double quotes work
  String fullName = '$firstName $lastName'; // Interpolation
  String multiLine = '''
  This is a
  multi-line
  string
  ''';

  print('String name = $fullName');
  print('Multi-line string: $multiLine');

  // Booleans
  bool isStudent = true;
  bool isEmployed = false;
  bool isAdult = age >= 18;

  print('bool isStudent = $isStudent');
  print('bool isAdult = $isAdult (age >= 18)');
  print('');

  // Lists (Arrays)
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  List<int> numbers = [1, 2, 3, 4, 5];

  print('List<String> fruits = $fruits');
  print('List<int> numbers = $numbers');
  print('');

  // Maps (Key-Value Pairs)
  Map<String, dynamic> person = {
    'name': 'Sara',
    'age': 28,
    'city': 'Riyadh',
    'isStudent': false,
  };

  print('Map person = $person');
  print('person["name"] = ${person["name"]}');
  print('');

  // =====================================================
  // 🔀 If-Else Statements
  // =====================================================

  print('🔀 If-Else Statements:');
  print('-' * 40);

  int score = 85;

  // Simple if-else
  if (score >= 90) {
    print('Grade: A - Excellent! 🌟');
  } else if (score >= 80) {
    print('Grade: B - Very Good! 👍');
  } else if (score >= 70) {
    print('Grade: C - Good 👌');
  } else if (score >= 60) {
    print('Grade: D - Pass 📝');
  } else {
    print('Grade: F - Need Improvement 📚');
  }
  print('');

  // =====================================================
  // ❓ Ternary Operator
  // =====================================================

  print('❓ Ternary Operator:');
  print('-' * 40);

  int userAge = 20;

  // condition ? valueIfTrue : valueIfFalse
  String status = userAge >= 18 ? 'Adult' : 'Minor';
  print('Age: $userAge → Status: $status');

  // Nested ternary (use sparingly!)
  String category =
      userAge < 13
          ? 'Child'
          : userAge < 20
          ? 'Teenager'
          : 'Adult';
  print('Age: $userAge → Category: $category');
  print('');

  // =====================================================
  // 🔄 Switch Statement
  // =====================================================

  print('🔄 Switch Statement:');
  print('-' * 40);

  String day = 'Monday';

  switch (day) {
    case 'Monday':
      print('📅 Start of the work week!');
      break;
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
      print('📅 Midweek - Keep going!');
      break;
    case 'Friday':
      print('📅 TGIF! 🎉');
      break;
    case 'Saturday':
    case 'Sunday':
      print('📅 Weekend! Relax 😎');
      break;
    default:
      print('📅 Invalid day');
  }
  print('');

  // =====================================================
  // 🧮 Logical Operators
  // =====================================================

  print('🧮 Logical Operators:');
  print('-' * 40);

  bool hasLicense = true;
  int driverAge = 22;

  // AND (&&) - Both conditions must be true
  if (hasLicense && driverAge >= 18) {
    print('✅ Can drive (has license AND is adult)');
  }

  // OR (||) - At least one condition must be true
  bool isWeekend = true;
  bool isHoliday = false;

  if (isWeekend || isHoliday) {
    print('✅ Day off! (weekend OR holiday)');
  }

  // NOT (!) - Reverses the boolean
  bool isRaining = false;

  if (!isRaining) {
    print('✅ Not raining - Good for outdoor activities!');
  }
  print('');

  // =====================================================
  // 🎯 Practical Example: User Validation
  // =====================================================

  print('🎯 Practical Example - User Validation:');
  print('-' * 40);

  String username = 'flutter_dev';
  String password = 'secure123';
  int loginAttempts = 2;

  // Multiple conditions
  if (loginAttempts >= 3) {
    print('❌ Account locked - Too many attempts!');
  } else if (username.isEmpty || password.isEmpty) {
    print('❌ Please enter both username and password');
  } else if (username.length < 3) {
    print('❌ Username must be at least 3 characters');
  } else if (password.length < 6) {
    print('❌ Password must be at least 6 characters');
  } else if (username == 'flutter_dev' && password == 'secure123') {
    print('✅ Login successful! Welcome, $username');
  } else {
    print('❌ Invalid credentials');
  }
  print('');

  print('=' * 50);
  print('✅ Day 2 - Example 1 Complete!');
}
