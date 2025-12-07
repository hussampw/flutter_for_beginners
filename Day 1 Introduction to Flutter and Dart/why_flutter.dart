/// =====================================================
/// 🎯 Day 1 - Example 3: Why Flutter?
/// Demonstrating Dart Features Used in Flutter
/// =====================================================

void main() {
  print('🔥 Why Flutter Matters - Dart Features Demo');
  print('=' * 50);
  print('');

  // =====================================================
  // 🎨 Flutter Uses Dart's Named Parameters
  // =====================================================

  print('🎨 Named Parameters (Like Flutter Widgets):');
  print('-' * 40);

  // This is how Flutter widgets work!
  createButton(
    text: 'Click Me',
    color: 'Blue',
    width: 200,
    height: 50,
    onPressed: () => print('   → Button was pressed!'),
  );
  print('');

  // =====================================================
  // 📦 Classes - Building Blocks of Flutter
  // =====================================================

  print('📦 Classes (Flutter is All About Classes):');
  print('-' * 40);

  // Creating widget-like objects
  var myCard = AppCard(
    title: 'Welcome Card',
    subtitle: 'This is how Flutter widgets work',
    icon: '🎉',
  );

  myCard.display();
  print('');

  // =====================================================
  // 🔄 Lists and Collections
  // =====================================================

  print('🔄 Lists (Used Everywhere in Flutter):');
  print('-' * 40);

  // List of menu items (like ListView in Flutter)
  List<String> menuItems = [
    '🏠 Home',
    '👤 Profile',
    '⚙️ Settings',
    '📞 Contact',
    '❓ Help',
  ];

  print('Navigation Menu:');
  for (int i = 0; i < menuItems.length; i++) {
    print('  ${i + 1}. ${menuItems[i]}');
  }
  print('');

  // =====================================================
  // 🗺️ Maps (Key-Value Pairs)
  // =====================================================

  print('🗺️ Maps (Used for Data & Styling):');
  print('-' * 40);

  // Like styling in Flutter
  Map<String, dynamic> buttonStyle = {
    'backgroundColor': 'Colors.blue',
    'textColor': 'Colors.white',
    'borderRadius': 8.0,
    'padding': 16.0,
    'fontSize': 18.0,
  };

  print('Button Style Configuration:');
  buttonStyle.forEach((key, value) {
    print('  $key: $value');
  });
  print('');

  // =====================================================
  // ⚡ Async/Await (Essential for Flutter)
  // =====================================================

  print('⚡ Async Operations (API Calls, Database):');
  print('-' * 40);

  fetchUserData();
  print('');

  // =====================================================
  // 🎯 Enums (State Management)
  // =====================================================

  print('🎯 Enums (App States in Flutter):');
  print('-' * 40);

  var currentState = AppState.loading;
  handleAppState(currentState);

  currentState = AppState.loaded;
  handleAppState(currentState);
  print('');

  // =====================================================
  // 🚀 Flutter Advantages Summary
  // =====================================================

  print('=' * 50);
  print('🚀 Why Choose Flutter?');
  print('');
  print('  ✅ Single Codebase - iOS, Android, Web, Desktop');
  print('  ✅ Hot Reload - See changes instantly');
  print('  ✅ Beautiful UI - Material & Cupertino widgets');
  print('  ✅ Fast Performance - Compiled to native code');
  print('  ✅ Rich Ecosystem - Thousands of packages');
  print('  ✅ Strong Community - Growing rapidly');
  print('  ✅ Backed by Google - Long-term support');
  print('');
  print('🎉 Ready to build amazing apps with Flutter!');
}

// =====================================================
// 📚 Supporting Functions and Classes
// =====================================================

/// Function with named parameters (like Flutter widgets)
void createButton({
  required String text,
  required String color,
  double width = 100,
  double height = 40,
  Function()? onPressed,
}) {
  print('  Creating Button:');
  print('    Text: "$text"');
  print('    Color: $color');
  print('    Size: ${width}x$height');

  if (onPressed != null) {
    print('    Has onPressed handler: Yes');
    onPressed();
  }
}

/// Simple class representing a card widget
class AppCard {
  final String title;
  final String subtitle;
  final String icon;

  // Constructor with named parameters
  AppCard({
    required this.title,
    required this.subtitle,
    this.icon = '📦',
  });

  void display() {
    print('  ┌─────────────────────────────┐');
    print('  │  $icon $title');
    print('  │  $subtitle');
    print('  └─────────────────────────────┘');
  }
}

/// Enum for app states
enum AppState { loading, loaded, error }

/// Handle different app states
void handleAppState(AppState state) {
  switch (state) {
    case AppState.loading:
      print('  ⏳ Loading... Please wait');
      break;
    case AppState.loaded:
      print('  ✅ Content loaded successfully!');
      break;
    case AppState.error:
      print('  ❌ Error occurred!');
      break;
  }
}

/// Simulating async operation (like API calls in Flutter)
Future<void> fetchUserData() async {
  print('  Fetching user data...');
  // In real Flutter app: await http.get(url)
  await Future.delayed(Duration(milliseconds: 100));
  print('  ✅ User data received!');
  print('  📧 Email: user@example.com');
  print('  👤 Name: Flutter Developer');
}
