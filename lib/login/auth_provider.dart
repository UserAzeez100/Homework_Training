import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:home_work/Shared.dart';
import 'package:home_work/login/app_route.dart';

class AuthProvider {
  TextEditingController userNameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  String userName='azeez';
  String password='123';

  String? usernameValidator(String? s){
    return s!.isEmpty  ? "* required field" : null;

  }

  String? passwordValidator(String? s){
    return s!.isEmpty  ? "* required field" : null;

  }




  checkLoginFun() {

    if (formState.currentState!.validate()) {
      String name = userNameController.text;
      String password = passwordController.text;

      if (name == userNameController.text && password == passwordController) {
        AppRoute.goToScreen('to_Assiment1');
      } else
        log('no data'.toString());

      MySharedPreferences.instanceSp.setStringValue('name', name);
      MySharedPreferences.instanceSp.setStringValue('name',password);




      checkNameTF() {

      }
    }
  }

}