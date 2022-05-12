import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:ui_flutter/modules/Add%20hotels%20and%20trips/add_screen.dart';
class AddTripsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Trips'),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 10.0, top:10.0),
                  child: Container(
                    height: 200.0,
                    width: 380.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[200],
                    ),

                    child:  IconButton(
                      icon: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 60.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(height: 1.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Name'),
                  ),
                 // SizedBox(height: 1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Container(
                      width: 100,
                      height: 40,
                      color: Colors.grey[200],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Details'),
                        ),
                       // SizedBox(height: 1.0,),
                        Container(
                          width: 360,
                          height: 140,
                          color: Colors.grey[200],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                    border:OutlineInputBorder(),
                        labelText: "Tour Guide Name"
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                          border:OutlineInputBorder(),
                          labelText: "Service Provider Name"
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Price',
                            style:TextStyle(
                              fontSize: 16.0,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: 100,
                        height: 40,

                        // child: Center(child: Text('250.00LE')),

                      ),

                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0,),
                      child: Text('Reviews',
                          style:TextStyle(
                            fontSize: 16.0,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('0'),
                          RatingBar.builder(
                            initialRating: 0,
                            itemSize: 15,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text('0'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Location',
                          style:TextStyle(
                            fontSize: 16.0,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 100,
                      height: 40,

                      // child: Center(child: Text('All')),

                    ),

                  ],
                ),

              ],
            ),

            SizedBox(height: 20.0,),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red,
                      ),
                      width: 140.0,
                      height: 40.0,
                      child: MaterialButton(onPressed: () {
                        Navigator.pop(context,
                          MaterialPageRoute(
                            builder:(context) => AddScreen(),
                          ),
                        );


                      },
                        child: Text(
                          'Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:16.0
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 60.0,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black,
                      ),
                      width: 140.0,
                      height: 40.0,
                      child: MaterialButton(onPressed: () {
                        Navigator.pop(context,
                          MaterialPageRoute(
                            builder:(context) => AddScreen(),
                          ),
                        );

                      },
                        child: Text(
                          'Done',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:16.0
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
