// ============================================
// Understanding Project Structure and Libraries in Dart
// ============================================

// ============================================
// 1. IMPORTING LIBRARIES
// ============================================

// Core Dart libraries (built-in)
import 'dart:core';      // Automatically imported - basic types
import 'dart:math';      // Math utilities
import 'dart:async';     // Async programming
import 'dart:collection'; // Advanced collections

// Import with prefix (avoid naming conflicts)
import 'dart:math' as math;

// Import only specific members
// import 'dart:math' show Random, pi;

// Import everything except specific members
// import 'dart:math' hide Random;

// Conditional imports (platform-specific)
// import 'dart:io' if (dart.library.html) 'dart:html';

// ============================================
// 2. PROJECT STRUCTURE EXAMPLE
// ============================================
/*
  Typical Dart/Flutter Project Structure:
  
  my_project/
  ├── lib/                    # Main source code
  │   ├── main.dart           # Entry point
  │   ├── src/                # Private implementation
  │   │   ├── models/         # Data models
  │   │   │   ├── user.dart
  │   │   │   └── product.dart
  │   │   ├── services/       # Business logic
  │   │   │   ├── api_service.dart
  │   │   │   └── auth_service.dart
  │   │   ├── utils/          # Utility functions
  │   │   │   ├── helpers.dart
  │   │   │   └── constants.dart
  │   │   └── widgets/        # UI components (Flutter)
  │   │       ├── custom_button.dart
  │   │       └── app_bar.dart
  │   └── my_project.dart     # Library export file
  ├── bin/                    # CLI entry points
  │   └── my_project.dart
  ├── test/                   # Unit tests
  │   ├── models/
  │   │   └── user_test.dart
  │   └── services/
  │       └── api_service_test.dart
  ├── example/                # Example usage
  ├── pubspec.yaml            # Package configuration
  ├── pubspec.lock            # Dependency lock file
  ├── analysis_options.yaml   # Linter rules
  └── README.md
*/

// ============================================
// 3. SIMULATED PROJECT MODULES
// ============================================

// --- Models ---
class User {
  final String id;
  final String name;
  final String email;
  final DateTime createdAt;
  
  User({
    required this.id,
    required this.name,
    required this.email,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();
  
  // Factory constructor from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }
  
  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'createdAt': createdAt.toIso8601String(),
    };
  }
  
  @override
  String toString() => 'User(id: $id, name: $name, email: $email)';
}

class Product {
  final String id;
  final String name;
  final double price;
  final int quantity;
  
  Product({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 0,
  });
  
  double get totalValue => price * quantity;
  
  @override
  String toString() => 'Product($name: \$$price x $quantity)';
}

// --- Services ---
class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal();
  
  final String baseUrl = 'https://api.example.com';
  
  // Simulate API call
  Future<List<User>> fetchUsers() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 1));
    
    // Return mock data
    return [
      User(id: '1', name: 'Ahmed', email: 'ahmed@example.com'),
      User(id: '2', name: 'Sara', email: 'sara@example.com'),
      User(id: '3', name: 'Omar', email: 'omar@example.com'),
    ];
  }
  
  Future<User?> fetchUserById(String id) async {
    await Future.delayed(Duration(milliseconds: 500));
    return User(id: id, name: 'User $id', email: 'user$id@example.com');
  }
}

class AuthService {
  User? _currentUser;
  
  User? get currentUser => _currentUser;
  bool get isLoggedIn => _currentUser != null;
  
  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));
    
    if (email.isNotEmpty && password.length >= 6) {
      _currentUser = User(
        id: 'u123',
        name: 'Hussam',
        email: email,
      );
      return true;
    }
    return false;
  }
  
  void logout() {
    _currentUser = null;
  }
}

// --- Utils ---
class AppConstants {
  static const String appName = 'My Dart App';
  static const String version = '1.0.0';
  static const int maxRetries = 3;
  static const Duration timeout = Duration(seconds: 30);
  
  // Private constructor - cannot instantiate
  AppConstants._();
}

class Helpers {
  // Generate unique ID
  static String generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
  
  // Format currency
  static String formatCurrency(double amount, {String symbol = '\$'}) {
    return '$symbol${amount.toStringAsFixed(2)}';
  }
  
  // Validate email
  static bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
  
  // Capitalize each word
  static String titleCase(String text) {
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }
}

// --- Repository Pattern ---
abstract class Repository<T> {
  Future<List<T>> getAll();
  Future<T?> getById(String id);
  Future<void> add(T item);
  Future<void> update(T item);
  Future<void> delete(String id);
}

class UserRepository implements Repository<User> {
  final List<User> _users = [];
  
  @override
  Future<List<User>> getAll() async => List.unmodifiable(_users);
  
  @override
  Future<User?> getById(String id) async {
    try {
      return _users.firstWhere((u) => u.id == id);
    } catch (e) {
      return null;
    }
  }
  
  @override
  Future<void> add(User item) async {
    _users.add(item);
  }
  
  @override
  Future<void> update(User item) async {
    final index = _users.indexWhere((u) => u.id == item.id);
    if (index != -1) {
      _users[index] = item;
    }
  }
  
  @override
  Future<void> delete(String id) async {
    _users.removeWhere((u) => u.id == id);
  }
}

// ============================================
// 4. WORKING WITH DART CORE LIBRARIES
// ============================================

class LibraryExamples {
  // dart:math examples
  static void mathExamples() {
    print('\n=== dart:math Library ===');
    
    final random = math.Random();
    
    print('PI: ${math.pi}');
    print('E: ${math.e}');
    print('Square root of 16: ${math.sqrt(16)}');
    print('Power 2^10: ${math.pow(2, 10)}');
    print('Max of 5, 10: ${math.max(5, 10)}');
    print('Min of 5, 10: ${math.min(5, 10)}');
    print('Random int (0-100): ${random.nextInt(100)}');
    print('Random double: ${random.nextDouble().toStringAsFixed(4)}');
    print('Random bool: ${random.nextBool()}');
  }
  
  // dart:async examples
  static Future<void> asyncExamples() async {
    print('\n=== dart:async Library ===');
    
    // Future
    print('Starting async operation...');
    final result = await Future.delayed(
      Duration(milliseconds: 500),
      () => 'Operation completed!',
    );
    print(result);
    
    // Stream example
    print('\nStream example:');
    final stream = Stream.periodic(
      Duration(milliseconds: 200),
      (count) => count,
    ).take(5);
    
    await for (final value in stream) {
      print('  Stream value: $value');
    }
    
    // Completer example
    final completer = Completer<String>();
    Future.delayed(Duration(milliseconds: 100), () {
      completer.complete('Completer finished!');
    });
    print(await completer.future);
  }
  
  // dart:collection examples
  static void collectionExamples() {
    print('\n=== dart:collection Library ===');
    
    // Queue
    final queue = Queue<String>();
    queue.addAll(['First', 'Second', 'Third']);
    print('Queue: $queue');
    print('Remove first: ${queue.removeFirst()}');
    print('Queue after: $queue');
    
    // LinkedHashMap (maintains insertion order)
    final linkedMap = LinkedHashMap<String, int>();
    linkedMap['one'] = 1;
    linkedMap['two'] = 2;
    linkedMap['three'] = 3;
    print('LinkedHashMap: $linkedMap');
    
    // SplayTreeMap (sorted)
    final sortedMap = SplayTreeMap<String, int>();
    sortedMap['banana'] = 2;
    sortedMap['apple'] = 1;
    sortedMap['cherry'] = 3;
    print('SplayTreeMap (sorted): $sortedMap');
    
    // HashSet
    final hashSet = HashSet<int>();
    hashSet.addAll([3, 1, 4, 1, 5, 9, 2, 6]);
    print('HashSet: $hashSet');
  }
}

// ============================================
// 5. PACKAGE MANAGEMENT (pubspec.yaml)
// ============================================
/*
  Example pubspec.yaml:
  
  name: my_dart_app
  description: A sample Dart application
  version: 1.0.0
  
  environment:
    sdk: '>=3.0.0 <4.0.0'
  
  dependencies:
    http: ^1.1.0           # HTTP client
    provider: ^6.0.5       # State management
    shared_preferences: ^2.2.0  # Local storage
    intl: ^0.18.0          # Internationalization
  
  dev_dependencies:
    lints: ^2.1.0          # Recommended lints
    test: ^1.24.0          # Testing framework
    mockito: ^5.4.0        # Mocking for tests
  
  # Common commands:
  # dart pub get           - Install dependencies
  # dart pub upgrade       - Upgrade dependencies
  # dart pub outdated      - Check for updates
  # dart pub publish       - Publish package
*/

// ============================================
// MAIN FUNCTION - DEMO
// ============================================

void main() async {
  print('╔════════════════════════════════════════════════════╗');
  print('║  Project Structure and Libraries Demo              ║');
  print('╚════════════════════════════════════════════════════╝');
  
  // Using Constants
  print('\n=== App Info ===');
  print('App: ${AppConstants.appName} v${AppConstants.version}');
  
  // Using Helpers
  print('\n=== Helper Functions ===');
  print('Generated ID: ${Helpers.generateId()}');
  print('Format currency: ${Helpers.formatCurrency(1234.5)}');
  print('Valid email test@test.com: ${Helpers.isValidEmail("test@test.com")}');
  print('Title case: ${Helpers.titleCase("hello world from dart")}');
  
  // Using Models
  print('\n=== User Model ===');
  final user = User(
    id: '1',
    name: 'Hussam',
    email: 'hussam@example.com',
  );
  print('User: $user');
  print('User JSON: ${user.toJson()}');
  
  // Using Repository
  print('\n=== Repository Pattern ===');
  final userRepo = UserRepository();
  await userRepo.add(user);
  await userRepo.add(User(id: '2', name: 'Ali', email: 'ali@example.com'));
  final allUsers = await userRepo.getAll();
  print('All users: $allUsers');
  
  // Using Services
  print('\n=== Services ===');
  final authService = AuthService();
  print('Is logged in: ${authService.isLoggedIn}');
  
  final loginSuccess = await authService.login('hussam@example.com', 'password123');
  print('Login success: $loginSuccess');
  print('Current user: ${authService.currentUser}');
  
  // API Service demo
  print('\nFetching users from API...');
  final apiService = ApiService();
  final users = await apiService.fetchUsers();
  for (final u in users) {
    print('  - $u');
  }
  
  // Library Examples
  LibraryExamples.mathExamples();
  await LibraryExamples.asyncExamples();
  LibraryExamples.collectionExamples();
  
  print('\n=== Demo Complete ===');
}
