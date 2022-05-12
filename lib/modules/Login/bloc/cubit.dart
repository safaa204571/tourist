
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_flutter/modules/Login/bloc/states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() :super(loginstate());

  static LoginCubit get(context) => BlocProvider.of(context);
  void userlogin(
      @required  String email,
  @required  String password
      ){
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password).then((value){
          emit(loginsucsessstate());
    }).catchError((error){
      emit(loginerrorstate());
    }) ;
emit(loginloadingstate());
  }
}