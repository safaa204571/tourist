import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_flutter/modules/Add%20hotels%20and%20trips/add%20hotels_screen.dart';
import 'package:ui_flutter/modules/Add%20hotels%20and%20trips/add%20trips_screen.dart';

class AddScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return

           Center(
             child: Padding(
               padding: const EdgeInsets.only(top:300),

                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder:(context) => AddTripsScreen(),
                                ),
                              );
                            },

                          ),
                          TextButton(
                              onPressed: ()
                              { Navigator.push(context,
                            MaterialPageRoute(
                              builder:(context) => AddTripsScreen(),
                            ),
                          );
                          },
                              child: Text('Add Trips')),
                        ],
                      ),

                      SizedBox(width: 20,),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder:(context) => AddHotelsScreen(),
                                ),
                              );
                            },

                          ),
                          TextButton(
                              onPressed: ()
                              { Navigator.push(context,
                                MaterialPageRoute(
                                  builder:(context) => AddHotelsScreen(),
                                ),
                              );
                              },
                              child: Text('Add Hotels')),
                        ],
                      ),

                    ],
          ),
                 ),

           );

  }
}
