import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_flutter/layout/serviceprovider_layout.dart';
import 'package:ui_flutter/modules/Login/bloc/cubit.dart';
import 'package:ui_flutter/modules/Login/bloc/states.dart';
import 'package:ui_flutter/modules/Login/forget_password_screen.dart';
import 'package:ui_flutter/modules/HomeServiceProvider/home_screen.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passWordController = TextEditingController();
  static Future<User?> loginUsingEmailPasssword({required String email,required String password,
      required BuildContext context})async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user ;
    try{
UserCredential userCredential=await auth.signInWithEmailAndPassword(
    email: email,
    password: password);
user= userCredential.user;
  }on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        print('NO User Found ');
      }
    }
    return user;
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, states) {},
        builder: (context, states) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'TOURISTA',
                              style: TextStyle(
                                fontSize: 60.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0,),
                        Text(
                          'Enter Your Email',
                          style: TextStyle(
                              color: Colors.black87
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),

                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),

                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Text(
                          'Enter Password',
                          style: TextStyle(
                              color: Colors.black87
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),

                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            controller: passWordController,

                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            obscureText: true,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context) => ForgetPassword(),
                                ),
                              );
                            },
                            child: Text(
                              'Forget password',
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 60.0,),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black,
                            ),
                            width: 180.0,
                            height: 50.0,

                            child: MaterialButton(
                              onPressed: () async{

                              User? user=await loginUsingEmailPasssword(email: emailController.text,
                                  password: passWordController.text, context: context);
                              print(user);
                              if(user!=null){
                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context) => ServiceProviderLayout(),
                                  ),
                                );
                              }

                            },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),

                      ]

                  ),
                ),
              ),
            ),

          );
        },
      ),
    );
  }

}

