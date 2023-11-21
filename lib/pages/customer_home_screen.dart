
import 'package:buzz/pages/profile_page.dart';

import 'package:flutter/material.dart';


import '../consts/constants.dart';
import 'categories_screen.dart';
import 'home_page.dart';
import 'messages_screen.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _currentTab = 0;
  // ignore: unused_field
  final List<Widget> _tabs = [
  const HomeScreen(),
    const CategoriesScreen(),
    const MessagesScreen(),
    const ProfilePage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: onBackground,
       body: PageStorage(
        bucket: bucket,
         child: currentScreen,
         ),

       floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        
        child: const Icon(Icons.add, color: Colors.white,),
        onPressed: () {  
        
        }, 
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //wrapped buttom app bar with padding
        bottomNavigationBar: BottomAppBar(
          color: onBackground,
          shape: const CircularNotchedRectangle(),
          notchMargin: 7,
          child: SizedBox(
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                      setState(() {
                        currentScreen = const HomeScreen();
                        _currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                        color: _currentTab == 0 ? primaryColor: primaryColor,
                        ),
                        Text('Home',
                        style: TextStyle(
                          color: _currentTab == 1 ? primaryColor : primaryColor,
                          fontSize: 10,
                          
                        ),
                        )
                     
                      ],
                    ),
                    ), 
                     MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                      setState(() {
                        currentScreen = const CategoriesScreen();
                        _currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search,
                       
                        color: _currentTab == 1 ? primaryColor: primaryColor,
                        ),
                        Text('Categories',
                        style: TextStyle(
                          color: _currentTab == 1 ? primaryColor : primaryColor,
                           fontSize: 10,
                        ),
                        )
                      ],
                    ),
                    ), 
        
                    //The invisible icon
                    
                    
                  ],
                  ),
                   Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                      setState(() {
                        currentScreen = const MessagesScreen();
                        _currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.message_outlined,
                        color: _currentTab == 2 ? primaryColor: primaryColor,
                        ),
                        Text('Messages',
                        style: TextStyle(
                          color: _currentTab == 2 ? primaryColor : primaryColor,
                          fontSize: 10,
                          
                        ),
                        )
                     
                      ],
                    ),
                    ), 
                     MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                      setState(() {
                        currentScreen = const ProfilePage();
                        _currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                       
                        color: _currentTab == 3 ? primaryColor: primaryColor,
                        ),
                        Text('Profile',
                        style: TextStyle(
                          color: _currentTab == 3 ? primaryColor : primaryColor,
                           fontSize: 10,
                        ),
                        )
                      ],
                    ),
                    ), 
                    
                  ],
                  ),
              ],
            ),
          ),
        ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: primaryColor,
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: Colors.black,
      //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      //   currentIndex: _selectedIndex,
      //    items: [
      //   BottomNavigationBarItem( icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.white),
      //   BottomNavigationBarItem( icon: Icon(Icons.search), label: 'Category', backgroundColor: Colors.white),
      //   BottomNavigationBarItem( icon: Icon(Icons.messenger_outline), label: 'Messages', backgroundColor: Colors.white),
      //   BottomNavigationBarItem( icon: Icon(Icons.person), label: 'Profile', backgroundColor: Colors.white),
      // ],
      // onTap: (index) {
      //   setState(() {
      //     _selectedIndex = index;
      //   });
      // },
      // ),
    );
  }
}