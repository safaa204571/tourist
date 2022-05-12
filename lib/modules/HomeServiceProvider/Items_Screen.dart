import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/page%20detail_screen.dart';

class ItemsScreen extends StatefulWidget {


  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  bool edit = false;

  @override
  Widget build(BuildContext context) {
    return Column (children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),

          color: Colors.white70,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Offers'),
            ),
            SizedBox(height: 16.0,),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image:DecorationImage(image:AssetImage('assets/images/BigTasty.jpg',),

                        fit: BoxFit.cover,
                      ),
                      borderRadius  :BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Big Tasty'),
                    SizedBox(height: 10.0,),
                    Text('double pieces of burger ,Tasty sauce......',
                        style: TextStyle(
                          fontSize: 10.0,
                        )),
                    SizedBox(height: 10.0,),
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

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('60 LE ',

                      style:TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text('instead of ',

                    ),
                    Text(
                      '80 LE',),
                    // overflow: TextOverflow.ellipsis,),
                    // SizedBox(height: 5.0,),
                    Checkbox(
                         value: edit,
                         onChanged: (value) {
                           setState(() {
                            edit = value!;
                          });
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
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(),
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

        // ListView.separated(
        //        scrollDirection: Axis.vertical,
        //        itemBuilder: (context, index) {
        //          return buildItem();
        //        },
        //        separatorBuilder: (context, index) {
        //          return SizedBox(height: 20.0,);
        //        },
        //        itemCount: 2,
        //        shrinkWrap: true,
        //        physics: NeverScrollableScrollPhysics(),
        //      ),

      ),
      SizedBox(height: 5,),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),

          color: Colors.white70,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 16.0,),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    decoration: BoxDecoration(

                      color: Colors.white,

                      image:DecorationImage(image:AssetImage('assets/images/Share-Box.png'),

                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                //SizedBox(width: 5.0,),
                // maxLines: 2,
                // overflow: TextOverflow.ellipsis,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Share Box'),
                    SizedBox(height: 10.0,),
                    Text('Two Big Mac and two Cheese Burger......',
                        style: TextStyle(
                          fontSize: 10.0,
                        )),
                    SizedBox(height: 10.0,),
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

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('60 LE ',

                      style:TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text('instead of ',
                      // style:TextStyle(
                      //   fontSize: 10,
                      // ),
                    ),
                    Text(
                      '130 LE',),
                    // overflow: TextOverflow.ellipsis,),
                    // SizedBox(height: 5.0,),
                    Checkbox(
                        value: edit,
                        onChanged: (value) {
                          setState(() {
                            edit = value!;
                          });
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
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(),
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

        // ListView.separated(
        //        scrollDirection: Axis.vertical,
        //        itemBuilder: (context, index) {
        //          return buildItem();
        //        },
        //        separatorBuilder: (context, index) {
        //          return SizedBox(height: 20.0,);
        //        },
        //        itemCount: 2,
        //        shrinkWrap: true,
        //        physics: NeverScrollableScrollPhysics(),
        //      ),

      ),
      SizedBox(height: 5,),
      Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white70,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Sandwiches'),
            ),
            SizedBox(height: 16.0,),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    decoration: BoxDecoration(

                      color: Colors.white,

                      image:DecorationImage(image:AssetImage('assets/images/BigTasty.jpg',),

                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                //SizedBox(width: 5.0,),
                // maxLines: 2,
                // overflow: TextOverflow.ellipsis,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Big Mac'),
                    SizedBox(height: 10.0,),
                    Text('double pieces of burger ,Tasty sauce......',
                        style: TextStyle(
                          fontSize: 10.0,
                        )),
                    SizedBox(height: 10.0,),
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

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('60 LE to 80 LE' ),
                    // overflow: TextOverflow.ellipsis,),
                    // SizedBox(height: 5.0,),
                    Checkbox(
                        value: edit,
                        onChanged: (value) {
                          setState(() {
                            edit = value!;
                          });
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
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(),
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
      SizedBox(height: 5,),
      Container(
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

                      color: Colors.white,

                      image:DecorationImage(image:AssetImage('assets/images/BigTasty.jpg'),

                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chicken Macdoo'),
                    SizedBox(height: 10.0,),
                    Text('double pieces of burger ,Tasty sauce......',
                        style: TextStyle(
                          fontSize: 10.0,
                        )),
                    SizedBox(height: 10.0,),
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

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('30 LE',
                    ),
                    // overflow: TextOverflow.ellipsis,),
                    // SizedBox(height: 5.0,),
                    Checkbox(
                        value: edit,
                        onChanged: (value) {
                          setState(() {
                            edit = value!;
                          });
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
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(),
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

        // ListView.separated(
        //        scrollDirection: Axis.vertical,
        //        itemBuilder: (context, index) {
        //          return buildItem();
        //        },
        //        separatorBuilder: (context, index) {
        //          return SizedBox(height: 20.0,);
        //        },
        //        itemCount: 2,
        //        shrinkWrap: true,
        //        physics: NeverScrollableScrollPhysics(),
        //      ),

      ),
    ],);
  }
}
