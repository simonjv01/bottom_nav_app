import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Bottom Navigation Bar Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The index of the currently selected page
  int _selectedIndex = 0;

  // The list of pages for the body of the Scaffold
  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  // The list of items for the bottom navigation bar
  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.pink,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
        color: Colors.pink,
      ),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite,
        color: Colors.pink,
      ),
      label: 'Favorites',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
        color: Colors.blue,
      ),
      label: 'Settings',
    ),
  ];

  // The method to handle the page change
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The body of the Scaffold is the selected page from the list
      body: _pages[_selectedIndex],
      // The bottom navigation bar of the Scaffold is the BottomNavigationBar widget
      bottomNavigationBar: BottomNavigationBar(
        // The items of the bottom navigation bar are the list of items
        items: _items,
        // The current index of the bottom navigation bar is the selected index
        currentIndex: _selectedIndex,
        // The onTap property handles the page change
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        selectedItemColor: Colors.pink,
      ),
    );
  }
}

// The first page of the app
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is page 1'),
    );
  }
}

// The second page of the app
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is page 2'),
    );
  }
}

// The third page of the app
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is page 3'),
    );
  }
}

// The fourth page of the app
class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is page 4'),
    );
  }
}
