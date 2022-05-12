import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_flutter/layout/manager_layout.dart';




class DetailScreen extends StatelessWidget {


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
                  height: 300.0,
                  width: 380.0,
                  decoration: BoxDecoration(

                    color: Colors.grey[100],

                  image:DecorationImage(image:AssetImage('assets/images/Pyramids.jpg'),
                    fit: BoxFit.cover,
                  ),
                    borderRadius: BorderRadius.circular(15.0),
                ),
                    ),
              ),


            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Pyramids',
                style:TextStyle(fontSize: 16,)),
          ),


          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Details'),
                ),
                Container(
                  width: 360,
                  height: 100,
                  color: Colors.grey[100],
                  child: Text('The Great Pyramid of Giza is the largest of all the Egyptian pyramids and is one of the Seven Wonders of the Ancient World.'
                      ' It is located around 5 miles to the west of the Nile River near the city of Cairo, ُEgypt'),

                ),
SizedBox(height: 1,),
                    Text("Trip include",
                      style: TextStyle(
                          fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                //SizedBox(height: 1,),
                Row(
                  children: [
                    Text(". Riding Horse",
                      style: TextStyle(
                          fontSize: 13.0
                      ),
                    ),
                    SizedBox(width: 1,),
                    Text(". Tour Guid",
                      style: TextStyle(
                          fontSize: 13.0
                      ),),SizedBox(width: 1,),
                    Text(". Group Chat",
                      style: TextStyle(
                          fontSize: 13.0
                      ),),

                    Text(". Transportation",
                      style: TextStyle(
                          fontSize: 13.0
                      ),),SizedBox(width:1,),
                          Text(". Photographer", style: TextStyle(
    fontSize: 13.0
    ),

                ),
],

                ),

              ],
            ),

          ),
          SizedBox(height: 1,),
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

                      child: Center(child: Text('500 LE',),

                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.0,),
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
              SizedBox(width: 10.0,),
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

                    child: Center(child: Text('Giza')),

                  ),

                ],
              ),

            ],
          ),
          SizedBox(height: 1,),
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
                                 builder:(context) => ManagerLayout(),
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
