import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

   RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController feildConteroller =TextEditingController();

  dynamic x;

  void showInSnackBar(String value,BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text(value)));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RegisterPage'),
      ),body: SafeArea(child: Column(children: [TextField(controller: feildConteroller),
      ElevatedButton(onPressed: () async {
        String textValue=feildConteroller.text;

        if( textValue.isNotEmpty){
         x = await  Navigator.of(context).pushNamed('to_profile_page',arguments: textValue);
         showInSnackBar(x.toString(),context);
        setState(() {

        });





        }else Dialog(elevation: 5,child: Text('enter data'));
      }, child:Text('send')),Text('${x }')


    ],)),
    );
  }
}
