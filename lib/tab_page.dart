import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page.dart';
import 'package:instagram_clone/login_page.dart';
import 'package:instagram_clone/search_page.dart';
import 'account_page.dart';


class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  List _pages = [
      HomePage(),
      SearchPage(),
      //AccountPage(),
      LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Instagram Clone")
      ),*/
      body: Center(
        child: _pages[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Account')),
        ]
      )
    );

  }



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}