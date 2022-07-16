import 'package:flutter/material.dart';
import 'package:musicrythum/screens/bottumnavigation/favorite_screen.dart';
import 'package:musicrythum/screens/bottumnavigation/home_screen.dart';
import 'package:musicrythum/screens/bottumnavigation/library_screen.dart';
import 'package:musicrythum/screens/bottumnavigation/setting_screen.dart';

class BottumNavi extends StatefulWidget {
  const BottumNavi({Key? key}) : super(key: key);

  @override
  State<BottumNavi> createState() => _BottumNaviState();
}

class _BottumNaviState extends State<BottumNavi> {
  static int _selectedIndex = 0;

  final List _bottumScreen = [
    const HomeScreen(),
    const FavoriteScreen(),
    const LibraryScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            primaryColor: Colors.red,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: const TextStyle(color: Colors.yellow))),
        child: BottomNavigationBar(
          fixedColor: Colors.red,
          elevation: 0,
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          selectedIconTheme: const IconThemeData(color: Colors.red),
          // backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Fevorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Library",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onPressed,
        ),
      ),
      body: SafeArea(
        child: _bottumScreen.elementAt(_selectedIndex),
      ),
    );
  }

  void _onPressed(int index) {
    if (index == 3) {
      Settings().showOptions(context);
    }

    setState(() {
      _selectedIndex = index;
    });
  }
}
