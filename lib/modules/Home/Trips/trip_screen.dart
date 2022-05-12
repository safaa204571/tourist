import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_flutter/models/trips.dart';

class TripsScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         ListView(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [  Text('Offers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width:100,),
                  Text('(20% Off)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),),
                ],),
            ),

                     SizedBox(height: 20,),
                      Container(
                                              height: 200,
                                              width: double.infinity,
                                              child: ListView(
                                                scrollDirection: Axis.horizontal,
                                                children: [
                                                  ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: MyData.length,
                                                      physics: NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemBuilder: (context, index) {
                                                        return Container(
                                                          height: 200,
                                                          width: 150,
                                                          child: Card(
                                                            child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Container(
                                                                      width: 150,
                                                                      height: 100,
                                                                      child: Stack(
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius:
                                                                              BorderRadius.circular(10),
                                                                              child: Image.asset(
                                                                                MyData[index].image,
                                                                                height: 140.0,
                                                                                width: 120.0,
                                                                                fit: BoxFit.fitHeight,),),

                                                                          ])
                                                                  ),
                                                                  RatingBar.builder(
                                                                    initialRating: 5,
                                                                    itemSize: 15,
                                                                    minRating: 1,
                                                                    direction: Axis.horizontal,
                                                                    allowHalfRating: true,
                                                                    itemCount: 5,
                                                                    itemPadding: EdgeInsets.symmetric(
                                                                        horizontal: 1.0),
                                                                    itemBuilder: (context, _) =>
                                                                        Icon(
                                                                          Icons.star, color: Colors.amber,),
                                                                    onRatingUpdate: (rating) {
                                                                      print(rating);
                                                                    },),
                                                                  Text(MyData[index].title,
                                                                      style: TextStyle(fontSize: 13.0,)),
                                                                  Text(MyData[index].address,
                                                                      style: TextStyle(fontSize: 11.0,)),
                                                                  Text(
                                                                      MyData[index].price,
                                                                      style: TextStyle(fontSize: 11.0,)),
                                                                  Container(
                                                                    height: 30,
                                                                    alignment: AlignmentDirectional
                                                                        .bottomEnd,
                                                                    child: MaterialButton(
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.all(
                                                                              Radius.circular(20.0))),
                                                                      elevation: 5.0,
                                                                      child: Text("more details",
                                                                        style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: 10),),
                                                                      color: Color(-1088543194),
                                                                      onPressed: () {

                                                                      },
                                                                    ),
                                                                  ),
                                                                ]

                                                            ),
                                                          ),
                                                        );
                                                      }
                                                  ),
                                                ],
                                              ),
                                            ),

            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [  Text('Trips near you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 80,),
                  Text('(10% Off)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),),
                ],),
            ),
                                SizedBox(height: 20,),
      Container(
                                            height: 200,
                                            width: double.infinity,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                ListView.builder(
                                                    scrollDirection: Axis.horizontal,
                                                    itemCount: MyData.length,
                                                    physics: NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemBuilder: (context, index) {
                                                      return Container(
                                                        height: 200,
                                                        width: 150,
                                                        child: Card(
                                                          child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Container(
                                                                    width: 150,
                                                                    height: 100,
                                                                    child: Stack(
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                            BorderRadius.circular(10),
                                                                            child: Image.asset(
                                                                              MyData[index].image,
                                                                              height: 140.0,
                                                                              width: 120.0,
                                                                              fit: BoxFit.fitHeight,),),
                                                                          Container(
                                                                            height: 25,
                                                                            width: 100,
                                                                            alignment: AlignmentDirectional
                                                                                .topEnd,
                                                                            child: CircleAvatar(
                                                                              backgroundColor: Colors
                                                                                  .white,

                                                                              child: Icon(
                                                                                Icons.favorite_outline,
                                                                                color: Colors.red,
                                                                                size: 20,),
                                                                            ),

                                                                          ),
                                                                        ])
                                                                ),
                                                                RatingBar.builder(
                                                                  initialRating: 5,
                                                                  itemSize: 15,
                                                                  minRating: 1,
                                                                  direction: Axis.horizontal,
                                                                  allowHalfRating: true,
                                                                  itemCount: 5,
                                                                  itemPadding: EdgeInsets.symmetric(
                                                                      horizontal: 1.0),
                                                                  itemBuilder: (context, _) =>
                                                                      Icon(
                                                                        Icons.star, color: Colors.amber,),
                                                                  onRatingUpdate: (rating) {
                                                                    print(rating);
                                                                  },),
                                                                Text(MyData[index].title,
                                                                    style: TextStyle(fontSize: 13.0,)),
                                                                Text(MyData[index].address,
                                                                    style: TextStyle(fontSize: 11.0,)),
                                                                Text(
                                                                    MyData[index].price,
                                                                    style: TextStyle(fontSize: 11.0,)),
                                                                Container(
                                                                  height: 30,
                                                                  alignment: AlignmentDirectional
                                                                      .bottomEnd,
                                                                  child: MaterialButton(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.all(
                                                                            Radius.circular(20.0))),
                                                                    elevation: 5.0,
                                                                    child: Text("more details",
                                                                      style: TextStyle(
                                                                          color: Colors.white,
                                                                          fontSize: 10),),
                                                                    color: Color(-1088543194),
                                                                    onPressed: () {
                                                                    },
                                                                  ),
                                                                ),
                                                              ]

                                                          ),
                                                        ),
                                                      );
                                                    }
                                                ),
                                              ],
                                            ),
                                          ),

                                SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [  Text('Aswan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(width: 80,),
                  Text('(20% Off)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),),
                ],),
            ),

            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: MyData.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 150,
                          child: Card(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start,
                                children: [
                                  Container(
                                      width: 150,
                                      height: 100,
                                      child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                MyData[index].image,
                                                height: 140.0,
                                                width: 120.0,
                                                fit: BoxFit.fitHeight,),),
                                            Container(
                                              height: 25,
                                              width: 100,
                                              alignment: AlignmentDirectional
                                                  .topEnd,
                                              child: CircleAvatar(
                                                backgroundColor: Colors
                                                    .white,

                                                child: Icon(
                                                  Icons.favorite_outline,
                                                  color: Colors.red,
                                                  size: 20,),
                                              ),

                                            ),
                                          ])
                                  ),
                                  RatingBar.builder(
                                    initialRating: 5,
                                    itemSize: 15,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(
                                        horizontal: 1.0),
                                    itemBuilder: (context, _) =>
                                        Icon(
                                          Icons.star, color: Colors.amber,),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },),
                                  Text(MyData[index].title,
                                      style: TextStyle(fontSize: 13.0,)),
                                  Text(MyData[index].address,
                                      style: TextStyle(fontSize: 11.0,)),
                                  Text(
                                      MyData[index].price,
                                      style: TextStyle(fontSize: 11.0,)),
                                  Container(
                                    height: 30,
                                    alignment: AlignmentDirectional
                                        .bottomEnd,
                                    child: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      elevation: 5.0,
                                      child: Text("more details",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10),),
                                      color: Color(-1088543194),
                                      onPressed: () {
                                      },
                                    ),
                                  ),
                                ]

                            ),
                          ),
                        );
                      }
                  ),
                ],
              ),
            ),          SizedBox(height: 20,),
],
    ),


    );
  }
}
