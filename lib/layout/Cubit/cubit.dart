import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_flutter/layout/Cubit/states.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/home_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/my%20account_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/qr%20code_screen.dart';


class ItemsCubit extends Cubit<ItemsStates>{
  ItemsCubit():super(Itemsinitialstate());
  static ItemsCubit get(context)=> BlocProvider.of(context);
  int CurrentIndex = 0;
  List<Widget> screens =[
    HomeScreen(),
    QrCodeScreen(),
    MyAccountScreen(),
  ];
List<BottomNavigationBarItem> BottomItems =[
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
];
void changeBottomNavBar ( int index){
  CurrentIndex=index;
  emit(ItemsBottomNavBar());
}

}