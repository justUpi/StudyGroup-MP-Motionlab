import 'package:flutter/material.dart';
import 'package:motion_week_2/pages/homeScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // Daftar Halaman
  final List<Widget> _pages = [
    Homescreen(),
    Text(
      'Index 1: dummy',
    ),
    Text(
      'Index 2: dummy',
    ),
    Text(
      'Index 3: dummy',
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          width: 47.0,
        ),
        actions: [
          Icon(Icons.shopping_bag),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              backgroundColor: Color(0xFF00623B)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: '',
              backgroundColor: Color(0xFF00623B)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
              backgroundColor: Color(0xFF00623B)),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
              backgroundColor: Color(0xFF00623B))
        ],
      ),
    );
  }
}
