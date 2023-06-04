import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab View App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabViewScreen(),
    );
  }
}

class TabViewScreen extends StatefulWidget {
  @override
  _TabViewScreenState createState() => _TabViewScreenState();
}

class _TabViewScreenState extends State<TabViewScreen> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    TabPage(1, Colors.blue),
    TabPage(2, Colors.amberAccent),
    TabPage(3, Colors.pink),
  ];

  void _onTabItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab View App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Page 1'),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: Text('Page 2'),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: Text('Page 3'),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dialpad),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final int pageNumber;
  final Color color;

  TabPage(this.pageNumber, this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: color,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          'Page $pageNumber',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}