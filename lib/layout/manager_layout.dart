import 'package:flutter/material.dart';
import 'package:ui_flutter/modules/Account/my%20account_screen.dart';
import 'package:ui_flutter/modules/Add%20hotels%20and%20trips/add_screen.dart';
import 'package:ui_flutter/modules/Home/manager%20home_screen.dart';

class ManagerLayout extends StatefulWidget {


  @override
  _ManagerLayoutState createState() => _ManagerLayoutState();
}

class _ManagerLayoutState extends State<ManagerLayout> {
  int CurrentIndex = 0;

  List<Widget> screens =[
    ManagerHomeScreen(),
    AddScreen(),
    AccountScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tourista'),
        actions: [
          Icon(
            Icons.notifications,
          ),

        ],

      ),
      body: screens[CurrentIndex],


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentIndex,
        onTap: (index){
        setState(() {
          CurrentIndex = index ;
        });
    },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'My Account',
            ),
          ]
      ),
    );
  }
}
