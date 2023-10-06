import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:home_work/Shared.dart';
import 'package:home_work/login/auth_provider.dart';
import 'package:provider/provider.dart';

import 'custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Consumer<AuthProvider>(builder: (context, pr, child) {
            return Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: pr.formState,
              child: Column(
                children: [
                  CustomTextField(validator: pr.usernameValidator, controller: pr.userNameController, lable: 'user name',),SizedBox(height: 20,),
                  CustomTextField(validator: pr.passwordValidator, controller: pr.passwordController, lable: 'password',),
                 SizedBox(height: 50,),
                  ElevatedButton(onPressed: (){pr.checkLoginFun();}, child: Text('send')),
                  ElevatedButton(onPressed: (){

                    MySharedPreferences.instanceSp.setStringValue('UserName', pr.userNameController.text);
                    Future<String> name=MySharedPreferences.instanceSp.getStringValue('UserName');



                    log(name.toString());



                  }, child: Text('save'))
                ],
              ),
            );
          },

          )),
    );
  }
}
