/// =====================================================
/// 🎯 Day 1 - Example 2: Dart Basics
/// Variables, Constants, and Null Safety
/// =====================================================

void main() {
  print('🎯 Dart Basics - Variables, Constants & Null Safety');
  print('=' * 50);
  print('');

  // =====================================================
  // 📦 Variable Declaration Methods
  // =====================================================

  print('📦 Variable Declaration Methods:');
  print('-' * 30);

  // Method 1: Using 'var' (type inference)
  var name = 'Ahmed'; // Dart knows this is a String
  var age = 25; // Dart knows this is an int

  // Method 2: Explicit type declaration
  String city = 'Dubai';
  int population = 3500000;

  // Method 3: Dynamic type (can change type)
  dynamic flexible = 'I am a string';
  print('Dynamic (string): $flexible');
  flexible = 42;
  print('Dynamic (now int): $flexible');
  print('');

  // =====================================================
  // 🔒 Constants: final vs const
  // =====================================================

  print('🔒 Constants (final vs const):');
  print('-' * 30);

  // 'final' - Set once, can be set at runtime
  final DateTime now = DateTime.now();
  final String userName = 'User_${now.millisecond}';
  print('Final (runtime): $userName');

  // 'const' - Compile-time constant
  const double pi = 3.14159;
  const String appName = 'Flutter Course';
  const int maxStudents = 100;

  print('Const PI: $pi');
  print('Const App Name: $appName');
  print('Const Max Students: $maxStudents');
  print('');

  // =====================================================
  // 🛡️ Null Safety in Dart
  // =====================================================

  print('🛡️ Null Safety:');
  print('-' * 30);

  // Non-nullable (cannot be null)
  String nonNullable = 'I cannot be null';
  print('Non-nullable: $nonNullable');

  // Nullable (can be null) - use ? after type
  String? nullable = null;
  print('Nullable (null): $nullable');
  nullable = 'Now I have a value!';
  print('Nullable (assigned): $nullable');

  // Null-aware operators
  String? maybeNull;

  // ?? - If null, use default value
  String result = maybeNull ?? 'Default Value';
  print('Using ?? operator: $result');

  // ?. - Null-aware access
  int? length = maybeNull?.length;
  print('Using ?. operator: $length');

  // ??= - Assign if null
  maybeNull ??= 'Assigned because it was null';
  print('Using ??= operator: $maybeNull');
  print('');

  // =====================================================
  // 📝 Late Variables
  // =====================================================

  print('📝 Late Variables:');
  print('-' * 30);

  // 'late' - Initialize later, but must be set before use
  late String lateVariable;
  // Some logic here...
  lateVariable = 'I was set later!';
  print('Late variable: $lateVariable');
  print('');

  // =====================================================
  // 📊 Type Checking and Casting
  // =====================================================

  print('📊 Type Checking:');
  print('-' * 30);

  var value = 42;
  print('Value: $value');
  print('Is int? ${value is int}');
  print('Is String? ${value is String}');
  print('Is num? ${value is num}');
  print('');

  // Type casting
  num number = 10;
  int integer = number as int;
  print('Cast num to int: $integer');
  print('');

  // =====================================================
  // 🎯 Summary
  // =====================================================

  print('=' * 50);
  print('🎯 Key Takeaways:');
  print('  • var - Type inference');
  print('  • final - Runtime constant');
  print('  • const - Compile-time constant');
  print('  • Type? - Nullable type');
  print('  • ?? - Null coalescing operator');
  print('  • ?. - Null-aware access');
  print('  • late - Lazy initialization');
  print('');
  print('✅ Day 1 - Example 2 Complete!');
}
