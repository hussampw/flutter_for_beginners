/// =====================================================
/// 🎯 Day 2 - Example 2: Loops and Functions
/// Iteration and Code Reusability in Dart
/// =====================================================

void main() {
  print('🔄 Loops and Functions in Dart');
  print('=' * 50);
  print('');

  // =====================================================
  // 🔁 For Loop
  // =====================================================

  print('🔁 For Loop:');
  print('-' * 40);

  // Classic for loop
  print('Counting from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print('  Count: $i');
  }
  print('');

  // For loop with list
  List<String> languages = ['Dart', 'Flutter', 'Python', 'JavaScript'];

  print('Programming Languages:');
  for (int i = 0; i < languages.length; i++) {
    print('  ${i + 1}. ${languages[i]}');
  }
  print('');

  // =====================================================
  // 🔂 For-In Loop
  // =====================================================

  print('🔂 For-In Loop (Enhanced For):');
  print('-' * 40);

  List<String> fruits = ['🍎 Apple', '🍌 Banana', '🍊 Orange', '🍇 Grapes'];

  print('Fruit Basket:');
  for (String fruit in fruits) {
    print('  $fruit');
  }
  print('');

  // =====================================================
  // 🔄 While Loop
  // =====================================================

  print('🔄 While Loop:');
  print('-' * 40);

  int countdown = 5;
  print('Rocket Launch Countdown:');

  while (countdown > 0) {
    print('  $countdown...');
    countdown--;
  }
  print('  🚀 Liftoff!');
  print('');

  // =====================================================
  // 🔃 Do-While Loop
  // =====================================================

  print('🔃 Do-While Loop:');
  print('-' * 40);

  int attempts = 0;
  int maxAttempts = 3;

  print('Login Simulation:');
  do {
    attempts++;
    print('  Attempt $attempts of $maxAttempts');
  } while (attempts < maxAttempts);
  print('  Max attempts reached!');
  print('');

  // =====================================================
  // ⏭️ Break and Continue
  // =====================================================

  print('⏭️ Break and Continue:');
  print('-' * 40);

  // Break - Exit the loop
  print('Break Example (Find number 5):');
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      print('  Found 5! Breaking...');
      break;
    }
    print('  Checking: $i');
  }
  print('');

  // Continue - Skip current iteration
  print('Continue Example (Skip even numbers):');
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) continue; // Skip even numbers
    print('  Odd number: $i');
  }
  print('');

  // =====================================================
  // 📐 Functions
  // =====================================================

  print('📐 Functions:');
  print('-' * 40);

  // Calling functions
  greet();
  greetUser('Ahmed');
  print('');

  // Function with return value
  int sum = add(10, 20);
  print('add(10, 20) = $sum');

  double average = calculateAverage([85, 90, 78, 92, 88]);
  print('Average score: ${average.toStringAsFixed(1)}');
  print('');

  // =====================================================
  // 🎯 Named Parameters
  // =====================================================

  print('🎯 Named Parameters:');
  print('-' * 40);

  createUser(name: 'Sara', age: 25, city: 'Dubai');
  createUser(name: 'Omar', age: 30); // city is optional
  print('');

  // =====================================================
  // 📦 Optional Parameters
  // =====================================================

  print('📦 Optional Parameters:');
  print('-' * 40);

  printInfo('Mohammed');
  printInfo('Ahmed', 28);
  printInfo('Sara', 25, 'Riyadh');
  print('');

  // =====================================================
  // ➡️ Arrow Functions
  // =====================================================

  print('➡️ Arrow Functions (Lambda):');
  print('-' * 40);

  // Regular function
  int multiplyRegular(int a, int b) {
    return a * b;
  }

  // Arrow function (short syntax)
  int multiply(int a, int b) => a * b;
  bool isEven(int n) => n % 2 == 0;
  String welcome(String name) => 'Welcome, $name!';

  print('multiply(5, 3) = ${multiply(5, 3)}');
  print('isEven(4) = ${isEven(4)}');
  print(welcome('Flutter Developer'));
  print('');

  // =====================================================
  // 🔄 Higher-Order Functions
  // =====================================================

  print('🔄 Higher-Order Functions:');
  print('-' * 40);

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // map - Transform each element
  var doubled = numbers.map((n) => n * 2).toList();
  print('Doubled: $doubled');

  // where - Filter elements
  var evenNumbers = numbers.where((n) => n % 2 == 0).toList();
  print('Even only: $evenNumbers');

  // reduce - Combine all elements
  var total = numbers.reduce((a, b) => a + b);
  print('Sum of all: $total');

  // forEach - Execute for each element
  print('Squares:');
  numbers.take(5).forEach((n) => print('  $n² = ${n * n}'));
  print('');

  // =====================================================
  // 🎯 Practical Example
  // =====================================================

  print('🎯 Practical Example - Shopping Cart:');
  print('-' * 40);

  List<Map<String, dynamic>> cart = [
    {'name': 'Laptop', 'price': 999.99, 'quantity': 1},
    {'name': 'Mouse', 'price': 29.99, 'quantity': 2},
    {'name': 'Keyboard', 'price': 79.99, 'quantity': 1},
  ];

  displayCart(cart);
  print('');

  print('=' * 50);
  print('✅ Day 2 - Example 2 Complete!');
}

// =====================================================
// 📚 Function Definitions
// =====================================================

/// Simple function with no parameters
void greet() {
  print('👋 Hello, World!');
}

/// Function with required parameter
void greetUser(String name) {
  print('👋 Hello, $name!');
}

/// Function with return value
int add(int a, int b) {
  return a + b;
}

/// Function with List parameter
double calculateAverage(List<int> scores) {
  int total = 0;
  for (int score in scores) {
    total += score;
  }
  return total / scores.length;
}

/// Function with named parameters
void createUser({required String name, required int age, String city = 'Unknown'}) {
  print('  User: $name, Age: $age, City: $city');
}

/// Function with positional optional parameters
void printInfo(String name, [int? age, String? city]) {
  String info = '  Name: $name';
  if (age != null) info += ', Age: $age';
  if (city != null) info += ', City: $city';
  print(info);
}

/// Practical function - Display shopping cart
void displayCart(List<Map<String, dynamic>> items) {
  double subtotal = 0;

  print('  🛒 Your Cart:');
  print('  ' + '-' * 35);

  for (var item in items) {
    double itemTotal = item['price'] * item['quantity'];
    subtotal += itemTotal;
    print('  ${item['name']} x${item['quantity']} - \$${itemTotal.toStringAsFixed(2)}');
  }

  print('  ' + '-' * 35);
  print('  Subtotal: \$${subtotal.toStringAsFixed(2)}');
  print('  Tax (10%): \$${(subtotal * 0.1).toStringAsFixed(2)}');
  print('  Total: \$${(subtotal * 1.1).toStringAsFixed(2)}');
}
