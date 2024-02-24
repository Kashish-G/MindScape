

import 'package:flutter/material.dart';

//import 'package:dot_navigation_bar/dot_navigation_bar.dart';
 import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:synergy/CartScreen.dart';
// import 'package:synergy/MainHomePage.dart';
// import 'package:synergy/ProfileScreen.dart';
// import 'package:synergy/SearchScreen.dart';
import 'package:synergyapp/CartScreen.dart';
import 'package:synergyapp/MainHomePage.dart';
import 'package:synergyapp/ProfileScreen.dart';
import 'package:synergyapp/SearchScreen.dart';
//enum _SelectedTab { home, favorite, search, person }
//import 'package:icons_plus/icons_plus.dart';
class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
static const String routeName= "tabs";
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _index = 0;

  // var _selectedTab = _SelectedTab.home;

  // void _handleIndexChanged(int i) {
  //   setState(() {
  //     _selectedTab = _SelectedTab.values[i];
  //   });
  // }

  final screens = [
   MainHomePage(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  // void _onTabTapped(int index) {
  //   setState(() {
  //     _index = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
bottomNavigationBar: Container(
  height: 70,
  padding: EdgeInsets.only(left: 20,right:20 ),
        decoration: BoxDecoration(
          color: Color(0x33DBDBDB),
          borderRadius: BorderRadius.circular(30),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 20,
          //     color: Color(0xFF303841).withOpacity(.1),
          //   )
          // ],
        ),
        child: SafeArea(
        
            child: GNav(
          
              rippleColor: Colors.white,
              hoverColor: Colors.white,
              gap: 4,
              activeColor: Color(0xFF32B4EF),
              iconSize: 30,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.white,

              
               color: Color(0x4D303841,),
              tabs: [
                GButton(
                  icon:Icons.home_rounded ,
              //    text: 'Home',
                ),
                GButton(
                  icon: Icons.search,
               //   text: 'Likes',
                ),
                GButton(
                  icon: Icons.shopping_cart,
               //   text: 'Search',
                ),
                GButton(
                  icon: Icons.person_sharp,
               //   text: 'Profile',
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
              },
            ),
          //),
        ),
      ),
  
    );
  }
}
