import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Job',
      style: optionStyle,
    ),
    Text(
      'Index 1: Post',
      style: optionStyle,
    ),
    Text(
      'Index 2: Announcement',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Irukkaa'),
        elevation: 1,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.boy_outlined),
              title: const Text('Profle'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.heat_pump_rounded),
              title: const Text('Favourites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/job.png',
              color: _selectedIndex == 0 ? Colors.black : Colors.white,
              width: 25,
              height: 25,
            ),
            label: 'Job',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/post.png',
              color: _selectedIndex == 1 ? Colors.black : Colors.white,
              width: 25,
              height: 25,
            ),
            label: 'Post',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ads.png',
              color: _selectedIndex == 2 ? Colors.black : Colors.white,
              width: 25,
              height: 25,
            ),
            label: 'Ads',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile2.png',
              color: _selectedIndex == 3 ? Colors.black : Colors.white,
              width: 25,
              height: 25,
            ),
            label: 'Profile',
            backgroundColor: Colors.teal,
          ),
        ],
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _selectedIndex,
        selectedItemColor: (_selectedIndex == 0 ||
                _selectedIndex == 1 ||
                _selectedIndex == 2 ||
                _selectedIndex == 3)
            ? Colors.black
            : Colors.white,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
