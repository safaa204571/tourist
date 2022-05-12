

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_flutter/layout/serviceprovider_layout.dart';
import 'package:ui_flutter/modules/FirstScreen/first_screen.dart';
import 'package:ui_flutter/modules/Home/Trips/trip_screen.dart';
import 'package:ui_flutter/modules/Home/hotel_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/add_Items_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/add_picture_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/dashboard_screen.dart';
import 'package:ui_flutter/modules/Receipt/receipt_screen.dart';
import 'package:ui_flutter/modules/SplashScreen/first_screen.dart';
import 'package:ui_flutter/modules/Login/forget_password_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/home_screen.dart';
import 'package:ui_flutter/modules/Login/login_screen.dart';
import 'package:ui_flutter/network/remote/dio_helper.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  //DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        backwardsCompatibility:false ,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.black,
          ),
    elevation: 0.0,
        ),
      ),
      home:TripsScreen(),
    );
  }
}