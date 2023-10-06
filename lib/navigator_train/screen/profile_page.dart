import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
        appBar: AppBar(title: Text('profil page')),
        body: Column(
          children: [
            Center(child: Text('${name}')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(name);
            }, child: Text('pop'))

          ],
        ));
  }
}
