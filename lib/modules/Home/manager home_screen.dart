


import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_flutter/layout/manager_layout.dart';
import 'package:ui_flutter/models/trips.dart';
import 'package:ui_flutter/modules/Home/Trips/trip_screen.dart';
import 'package:ui_flutter/modules/Home/detail_screen.dart';
import 'package:ui_flutter/modules/Home/hotel_screen.dart';
import 'package:ui_flutter/modules/Home/managerdashboard.dart';


class ManagerHomeScreen extends StatefulWidget {

  @override
  _ManagerHomeScreenState createState() => _ManagerHomeScreenState();
}

class _ManagerHomeScreenState extends State<ManagerHomeScreen> with TickerProviderStateMixin {
  // int selectedIndex = 0;
  // List categories = ['All Trips', 'Trips', 'Hotels ', 'Dashboard'];

  @override
  build(BuildContext context) {
    TabController _tabcontroller =
    TabController(length: 4, vsync: this, initialIndex: 0);

    return
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabcontroller,
                    unselectedLabelColor: Colors.black54,
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),


                    tabs: [
                      Tab(text: 'All Trips'),
                      Tab(text: 'Trips'),
                      Tab(text: 'Hotels'),
                      Tab(text: 'Dashboard'),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(

                child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    child: TabBarView(
                      controller: _tabcontroller,

                      children: [

                      TripsScreen(),
                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),

                                        color: Colors.white70,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Row(
                                            children: [

                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  height: 113.0,
                                                  width: 130.0,
                                                  decoration: BoxDecoration(

                                                  image:DecorationImage(image:AssetImage('assets/images/Pyramids.jpg'),
                                                    // height: 100.0,
                                                    // width: 120.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                      borderRadius: BorderRadius.circular(15.0,)),
                                                ),
                                                ),

                                              SizedBox(width: 20.0,),
                                              // maxLines: 2,
                                              // overflow: TextOverflow.ellipsis,
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Pyramids',
                                                      style: TextStyle(
                                                        fontSize: 13.0,
                                                      )),

                                                  SizedBox(height: 13.0,),
                                                  Text('Giza,Egypt',
                                                      style: TextStyle(
                                                        fontSize: 11.0,
                                                      )
                                                  ),
                                                  SizedBox(height: 13.0,),

                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    itemSize: 15,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.amber,
                                                        ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  // SizedBox(width: 10.0,),
                                                ],
                                              ),
                                              SizedBox(width: 40.0,),
                                              Column(

                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('500 lE',
                                                  ),
                                                  SizedBox(height: 1.0,),
                                                  Checkbox(
                                                      value: false,
                                                      onChanged: (value) {
                                                        // setState(() {});
                                                      }
                                                  ),
                                                  SizedBox(height: 2.0,),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      color: Colors.black,
                                                    ),
                                                    width: 85.0,
                                                    height: 40.0,
                                                    child:
                                                    MaterialButton(onPressed: () {
                                                      Navigator.push( context ,
                                                        MaterialPageRoute(
                                                          builder:(context) => DetailScreen(),
                                                        ),
                                                      );
                                                    },
                                                      child: Text(
                                                        'Edit',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16.0
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                            ],
                                          ),

                                        ],
                                      ),
                                      //SizedBox(height: 5.0,),


                                    ),
                                    Divider(height: 5, thickness: 1,),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 20.0,);
                            },
                            itemCount: 10,
                            shrinkWrap: true,
                            // physics: NeverScrollableScrollPhysics(),
                          ),
                        ),

                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Expanded(
                                child:   Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),

                                        color: Colors.white70,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Row(
                                            children: [

                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  height: 110.0,
                                                  width: 120.0,
                                                  decoration: BoxDecoration(

                                                  image:DecorationImage(image:AssetImage('assets/images/hilton.jpg.jpg',),
                                                    // height: 100.0,
                                                    // width: 120.0,
                                                    fit: BoxFit.cover,
                                                  ),

                                                    borderRadius: BorderRadius.circular(15.0),
                                                ),
                                              ),
                                              ),
                                              SizedBox(width: 20.0,),
                                              // maxLines: 2,
                                              // overflow: TextOverflow.ellipsis,
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Hilton',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight: FontWeight.bold
                                                      )),
                                                  SizedBox(height: 13.0,),
                                                  Text('Alexandria,Egypt',
                                                      style: TextStyle(
                                                        fontSize: 11.0,
                                                      )),
                                                  SizedBox(height: 13.0,),
                                                  RatingBar.builder(
                                                    initialRating: 5,
                                                    itemSize: 15,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.amber,
                                                        ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  // SizedBox(width: 10.0,),
                                                ],
                                              ),
                                              SizedBox(width: 30.0,),
                                              Column(

                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Average 180 per/night',
                                                  ),
                                                  // overflow: TextOverflow.ellipsis,),
                                                  // SizedBox(height: 5.0,),
                                                  Checkbox(
                                                      value: false,
                                                      onChanged: (value) {
                                                        //setState(() {});
                                                      }
                                                  ),
                                                  // SizedBox(height: 2.0,),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      color: Colors.black,
                                                    ),
                                                    width: 85.0,
                                                    height: 40.0,
                                                    child: MaterialButton(onPressed: () {

                                                      Navigator.push( context,
                                                        MaterialPageRoute(
                                                          builder:(context) => HotelScreen(),
                                                        ),
                                                      );
                                                    },
                                                      child: Text(
                                                        'Edit',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16.0
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ),

                                    //SizedBox(height: 5.0,),

                                    Divider(height: 5, thickness: 1,),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 20.0,);
                            },
                            itemCount: 10,
                            shrinkWrap: true,
                            // physics: NeverScrollableScrollPhysics(),
                          ),
                        ),
                      ManagerDahboardScreen(),

],
                      ),
    ),
              ),

    ],
      );

  }






  }




  Widget buildItem( BuildContext context) =>
Expanded(
  child:   Column(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),

                  color: Colors.white70,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Image.asset('assets/images/hilton.jpg.jpg',
                              // height: 100.0,
                              // width: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        // maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hilton',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                )),
                            SizedBox(height: 13.0,),
                            Text('Alexandria,Egypt',
                                style: TextStyle(
                                  fontSize: 11.0,
                                )),
                            SizedBox(height: 13.0,),
                            RatingBar.builder(
                              initialRating: 5,
                              itemSize: 15,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) =>
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            // SizedBox(width: 10.0,),
                          ],
                        ),
                        SizedBox(width: 30.0,),
                        Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Average 180 per/night',
                            ),
                            // overflow: TextOverflow.ellipsis,),
                            // SizedBox(height: 5.0,),
                            Checkbox(
                                value: false,
                                onChanged: (value) {
                                  //setState(() {});
                                }
                            ),
                            // SizedBox(height: 2.0,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.black,
                              ),
                              width: 85.0,
                              height: 40.0,
                              child: MaterialButton(onPressed: () {

                                 Navigator.push( context,
                                MaterialPageRoute(
                                  builder:(context) => HotelScreen(),
                                ),
                               );
                              },
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ],
                ),
  ),

                //SizedBox(height: 5.0,),

              Divider(height: 5, thickness: 1,),
            ],
      ),
);

  Widget buildTrip(BuildContext context) =>
      Expanded(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),

                color: Colors.white70,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50.0,)),
                          ),
                          child: Image.asset('assets/images/Pyramids.jpg',
                            // height: 100.0,
                            // width: 120.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(width: 20.0,),
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pyramids',
                              style: TextStyle(
                                fontSize: 13.0,
                              )),

                          SizedBox(height: 13.0,),
                          Text('Giza,Egypt',
                              style: TextStyle(
                                fontSize: 11.0,
                              )
                          ),
                          SizedBox(height: 13.0,),

                          RatingBar.builder(
                            initialRating: 5,
                            itemSize: 15,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) =>
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          // SizedBox(width: 10.0,),
                        ],
                      ),
                      SizedBox(width: 40.0,),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('500 lE',
                          ),
                          SizedBox(height: 1.0,),
                          Checkbox(
                              value: false,
                              onChanged: (value) {
                                // setState(() {});
                              }
                          ),
                          SizedBox(height: 2.0,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black,
                            ),
                            width: 85.0,
                            height: 40.0,
                            child:
                            MaterialButton(onPressed: () {
                              Navigator.push( context ,
                                MaterialPageRoute(
                                  builder:(context) => DetailScreen(),
                                ),
                              );
                            },
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
              //SizedBox(height: 5.0,),


            ),
            Divider(height: 5, thickness: 1,),
          ],
        ),
      );



