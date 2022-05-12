import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_flutter/modules/Login/login_screen.dart';

class ManagerForgetPassword extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'TOURISTA',
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40.0,),

                Center(
                    child: Container(
                      width:330,
                      height: 140,
                      color: Colors.green[100],
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text(
                                'one of our customer service will',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black54,
                                ),
                              ),

                               Text( 'contact you soon .....',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                                 style: TextStyle(
                                   fontSize: 16.0,
                                   color: Colors.black54,
                                 ),
                            ),

                            SizedBox(height: 20,),

                                  Padding(
                                    padding: const EdgeInsets.only(left:220.0,top:14.0,right:0.0,bottom:0.0,),
                                    child: Container(
                                      width: 95.0,
                                child: MaterialButton(
                                      onPressed: (){
                                        Navigator.pop(context,
                                          MaterialPageRoute(
                                            builder:(context) => LoginScreen(),
                                          ),
                                        );
                                      },
                                      child:Text(
                                        'OK',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                        ),
                                      ),
                              ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: Colors.black54,
                                    ),
                               ),
                                  ),
                          ],
                        ),
                      ),


                    ),
                  ),
              ],
            ),

      );

  }
}
