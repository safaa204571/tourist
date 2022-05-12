import 'package:flutter/material.dart';
import 'package:ui_flutter/layout/serviceprovider_layout.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/dashboard_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/wallet_screen.dart';

class MyAccountScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: ListView(
          children: <Widget>[
            Container(
              height: 210,
              width: 250,
              color: Color(-1088543194),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.center ,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: IconButton(
                      onPressed: (){},
                      icon: new Icon(
                        Icons.manage_accounts_outlined,
                        size: 35,
                        color: Colors.white,
                      ),),),
                  Container(
                    height : 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4.0))
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("https://vid.alarabiya.net/images/2021/06/26/b6dfac16-d869-4654-a883-f000f7438368/b6dfac16-d869-4654-a883-f000f7438368_16x9_1200x676.jpg?width=1138"),
                    ),
                  ),
                  Text(" Ahmed Hassan ",style:TextStyle(fontSize: 16)),
                  Text("ahmedhassan1478@gmail.com ",style:TextStyle(fontSize: 13) ,),

                ],),),
            Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: ListTile(
                  leading: Icon(Icons.home,size: 30,color: Color(-1088543194),),
                  title: Text("Home", style: TextStyle(fontSize: 16),),
                  onTap:(){Navigator.push(context,
                    MaterialPageRoute(
                      builder:(context) =>ServiceProviderLayout(),
                    ),
                  ) ; }
              ),
            ),
            Divider(height: 10,
              thickness: 1,),
            Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: ListTile(
                  leading: Icon(Icons.dashboard,size: 30,color: Color(-1088543194),),
                  title: Text("Dashboard",style: TextStyle(fontSize: 16)),
                  onTap:(){Navigator.push(context,
                    MaterialPageRoute(
                      builder:(context) =>DahboardScreen(),
                    ),
                  ) ; }
              ),
            ),
            Divider(height: 10,
              thickness: 1,),
            Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: ListTile(
                  leading: Icon(Icons.account_balance_wallet_outlined,size: 30,color:Color(-1088543194),),
                  title: Text(" Wallet", style: TextStyle(fontSize: 16)),
                  onTap:(){Navigator.push(context,
                    MaterialPageRoute(
                      builder:(context) => WalletScreen(),
                    ),
                  ) ; }
              ),

            ),
            Divider(height: 10, thickness: 1,),

            Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),

              child: ListTile(
                  leading: Icon(Icons.logout,size: 30,color:Color(-1088543194),),
                  title: Text(" log out", style:TextStyle(fontSize: 16)),
                  onTap:(){ }
              ),

            ),
            Divider(height: 10, thickness: 1,),


          ],

        )
    );
  }
}
