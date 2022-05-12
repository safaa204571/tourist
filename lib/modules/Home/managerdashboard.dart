import 'package:flutter/material.dart';

import 'package:ui_flutter/models/dashboard.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/subscriberchart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:charts_flutter/subscriber_series.dart';


class ManagerDahboardScreen extends StatelessWidget {

  final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: "Giza",
      subscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.amberAccent),
    ),
    SubscriberSeries(
      year: "luxor",
      subscribers: 11000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.deepOrange),
    ),
    SubscriberSeries(
      year: " sharm",
      subscribers: 12000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.amber),
    ),
    SubscriberSeries(
      year: "aswan",
      subscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.orange),
    ),
    SubscriberSeries(
      year: "safary",
      subscribers: 8500000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    SubscriberSeries(
      year: "catreen",
      subscribers: 7700000,
      barColor: charts.ColorUtil.fromDartColor(Colors.teal),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
          child: SubscriberChart(
            data: data,
          )
      ),




    );


  }
}
