import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_flutter/layout/Cubit/cubit.dart';
import 'package:ui_flutter/layout/Cubit/states.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/Items_Screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/home_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/my%20account_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/qr%20code_screen.dart';

class ServiceProviderLayout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>ItemsCubit(),
      child: BlocConsumer<ItemsCubit,ItemsStates>(
        listener: (context,states){},
        builder:  (context,states){
          return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Tourista'),
            actions: [
              Icon(
                Icons.notifications,
              ),

            ],
          ),
          body: ItemsCubit.get(context).screens[ItemsCubit.get(context).CurrentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: ItemsCubit.get(context).CurrentIndex,
            onTap: (index){

              ItemsCubit.get(context).changeBottomNavBar(index) ;
            },
            items:ItemsCubit.get(context).BottomItems ,
          ),
          );
        },

      ),
    );
  }
}
