import 'package:flutter/material.dart';

import 'package:ui_flutter/models/dashboard.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/subscriberchart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:charts_flutter/subscriber_series.dart';


class DahboardScreen extends StatelessWidget {

  final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: "BigTasty",
      subscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.amberAccent),
    ),
    SubscriberSeries(
      year: "ShareBox",
      subscribers: 11000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.deepOrange),
    ),
    SubscriberSeries(
      year: " Mac",
      subscribers: 12000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.amber),
    ),
    SubscriberSeries(
      year: "ChickenMac",
      subscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.orange),
    ),
    SubscriberSeries(
      year: "Burger",
      subscribers: 8500000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    SubscriberSeries(
      year: "Chicken",
      subscribers: 7700000,
      barColor: charts.ColorUtil.fromDartColor(Colors.teal),
    ),

    // SubscriberSeries(
    //   year: "sandwiches",
    //   subscribers: 7600000,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    // ),

    // SubscriberSeries(
    //   year: "swshy",
    //   subscribers: 5500000,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.red),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Dashboard'),

        ),
      body: Center(
          child: SubscriberChart(
            data: data,
          )
      ),

      bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code,
              ),
              label: 'Print',
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
