import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_flutter/layout/serviceprovider_layout.dart';
class AddPictureScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('DETAILS'),

      ),
      body: Column(
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
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[100],

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
          //  SizedBox(height: 6.0,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:  Text('Big Tasty',
                      style:TextStyle(fontSize: 16,)),
                ),

                SizedBox(height: 35.0,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Details'),
                      ),
                         Container(
                          width: 360,
                          height: 120,
                          color: Colors.grey[100],
                          child: Text('The Big Tasty, not to be confused with the Big N Tasty, is a burger available in parts of Europe, '
                              'South America and the Middle East. It is made of a sesame seed bun,'
                              ' iceberg lettuce, tomatoes, Big Tasty sauce, cheese, bacon, and a beef patty or chicken patty.'),
                        ),

                    ],
                  ),
                ),
              ],
            ),
          ),
SizedBox(height: 25.0,),
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

                      child: Center(child: Text('250.00LE')),

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
                        Text('4.7'),
                        RatingBar.builder(
                          initialRating: 5,
                          itemSize: 15,
                          minRating: 1,
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
                        Text('1.44'),
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
                    child: Text('Category',
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

                     child: Center(child: Text('All')),

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
                          builder:(context) => ServiceProviderLayout(),
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
    );
  }
}

