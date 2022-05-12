


import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_flutter/layout/serviceprovider_layout.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/Items_Screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/add_Items_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/page%20detail_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/wallet_screen.dart';

import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  {

  bool edit = false;


  @override
  Widget build(BuildContext context) {
    return

      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

                Column(
                  children: [

                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Container(
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[200],
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                              ),
                              SizedBox(width: 10.0,),
                              Text('Search',
                              ),

                            ],
                          ),
                      ),
                       ),
                    SizedBox(height: 5.0,),


                       Padding(
                           //const EdgeInsets.only(bottom: 80.0, left: 40.0,),
                           padding: const EdgeInsets.only(left:40.0),
                           child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(
                                      builder: (context) => ServiceProviderLayout(),
                                    ),
                                  );
                                },
                                child: Text('My Items',style: TextStyle(
                                  color: Colors.black,
                                ),),
                              ),
                              SizedBox(width: 80,),
                              InkWell(onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context) => DahboardScreen (),
                                  ),
                                );
                                },
                                  child: Text('Dashboard',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),),
                                ),

                              SizedBox(width: 80,),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(
                                      builder: (context) => WalletScreen(),
                                    ),
                                  );
                                },
                                child: Text('Wallet',style: TextStyle(
                                  color: Colors.black,
                                ),),
                              ),
                            ],
                      ),
                         ),




                    SizedBox(height: 10.0,),

        Padding(
          padding: const EdgeInsets.only(left:40.0),
          child: Row(
                            children: [

                              Text('Category'),
                              SizedBox(width: 13.0,),
                              Container(
                                width: 120,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),

                                child: Center(
                                  child: Text(
                                      'All'
                                  ),
                                ),
                              ),
                              SizedBox(width: 80.0, height: 20,),
                              Column(
                                children: [
                                  IconButton
                                    (
                                      onPressed:() {
                                        Navigator.push(context,
                                        MaterialPageRoute(
                                        builder:(context) => AddItemsScreen(),
                                        ),
                                        );
                                        },
                                      icon:Icon(
                                      Icons.add_circle_outline,
        ),
                                    ),
                                  SizedBox(height: 5.0,),
                                  Text(
                                    'Add Items',
                                  )
                                ],
                              ),
                            ],
                          ),
        ),

                  ],
                ),
               ItemsScreen(),
    ],
    ),

      );

  }



}

















































































































