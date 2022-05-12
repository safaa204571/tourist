import 'package:flutter/material.dart';

import 'package:ui_flutter/models/dashboard.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class SubscriberChart extends StatelessWidget {
  final List<SubscriberSeries> data;

  SubscriberChart({required this.data});

  //charts.BarChart(series, animate: true, this.data);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (SubscriberSeries series, _) => series.year,
          measureFn: (SubscriberSeries series, _) => series.subscribers,
          colorFn: (SubscriberSeries series, _) => series.barColor
      )
    ];

        return Container(
        height: 800,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Card(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        children: <Widget>[
        Text(
        "Reqests",
        style: Theme.of(context).textTheme.body2,
        ),
        Expanded(
        child: charts.BarChart(series, animate: true),

        ),
          SizedBox(width: 10,),
        ],
        ),
        ),
        ),
        );

        }
        }
