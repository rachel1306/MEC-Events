import 'package:flutter/material.dart';
import 'package:mec_events/Screens/filter.dart';
import 'package:mec_events/Screens/Home/home.dart';
import 'package:mec_events/Screens/Favorite/favorite.dart';
import 'package:mec_events/Screens/Profile/profile.dart';
class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex=0;
  bool _navbarvisible=false;

  final tabs=[
    Home(),
    Favorite(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedIndex],   // body: Navigator(
      //   onGenerateRoute: (settings) {
      //     Widget page = Home();
      //     switch(_selectedIndex){
      //       case 1: page=Favorite();
      //         break;
      //       case 2:page=Profile();
      //       break;
      //       default: page=Home();
      //     }
      //     return MaterialPageRoute(builder: (_) => page);
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Color(0xFF122F34),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: '', activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: '',activeIcon: Icon(Icons.favorite)),
          BottomNavigationBarItem(icon: Icon(Icons.person_add_alt), label: '',activeIcon: Icon(Icons.person_add_alt_1)),
        ],
        onTap: (index){
          setState((){
            _selectedIndex=index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
