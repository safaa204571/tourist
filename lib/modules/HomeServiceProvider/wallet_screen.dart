
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ui_flutter/layout/serviceprovider_layout.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/dashboard_screen.dart';

   class WalletScreen extends StatelessWidget {
     var nameController =TextEditingController();

     var creditController =TextEditingController();
     //  final firebase = FirebaseFirestore.instance;
     // create()async{
     //    try{
     //      await firebase.collection('ServiceProvider').doc().set({
     //        "name" : nameController.text,
     //        "price" : creditController.text,
     //
     //      });
     //    }catch(e){
     //      print(e);
     //    }


      @override
      Widget build(BuildContext context) {
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


                  body:SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 380,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[200],
                                ),
                                padding: EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                    ),
                                    SizedBox(width: 10.0,),
                                    Text('Search',
                                    ),

                                  ],
                                ),
                              ),
                            ),

                            Padding(
        padding: const EdgeInsets.all(40.0),
                child: Row(
                children: [
                InkWell(
                    onTap: (){  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => ServiceProviderLayout(),
                      ),
                    );},
                      child: Text('My Items'),
                    ),
                SizedBox(width: 80,),
                InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => DahboardScreen(),
                        ),
                      );
                },
                    child: Text('Dashboard'),
                    ),
                    SizedBox(width: 80,),
                InkWell(
                    onTap: (){ Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => WalletScreen(),
                      ),
                    );},
                    child: Text('Wallet'),
                    ),
                ],
                ),
        ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Cardholder Name',
                                style: TextStyle(
                                    color: Colors.black87
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                ),

                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border:OutlineInputBorder(),
                                    hintText: 'Card Name'
                                  ),
                                  controller:nameController ,

                                ),
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Credit',
                                style: TextStyle(
                                    color: Colors.black87
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color:Colors.white,
                                ),

                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border:OutlineInputBorder(),
                                    hintText: 'Price',
                                  ),
                                  controller: creditController,

                                ),
                              ),
                            ),
                      SizedBox(height: 160.0,),

                      Padding(
                        padding: const EdgeInsets.only(left:220.0,),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                          ),
                          width: 180.0,
                          height: 50.0,
                          child: MaterialButton(onPressed: () {
                            // create();
                            // nameController.clear();
                            // creditController.clear();
                            // Navigator.pop(context,
                            //   MaterialPageRoute(
                            //     builder:(context) => HomeScreen(),
                            //   ),
                            //);


                          },
                            child: Text(
                              'Withdraw',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:16.0
                              ),
                            ),
                          ),
                        ),
                      ),
      ],
                    ),
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


