import 'package:flutter/material.dart';
import 'package:home_work/data/category_data.dart';

class Assignment_1 extends StatefulWidget {


  @override
  State<Assignment_1> createState() => _Assignmet_1State();
}

class _Assignmet_1State extends State<Assignment_1> {
  bool fav= false;

  @override
  Widget build(BuildContext context) {
    List<Map> imagesList = [
      {'image_url': 'images/image1.jpeg', 'name': 'image 1', 'price': '122'},
      {'image_url': 'images/image2.jpeg', 'name': 'image 2', 'price': '10'},
      {'image_url': 'images/image3.jpeg', 'name': 'image 3', 'price': '15'},
      {'image_url': 'images/image2.jpeg', 'name': 'image 2', 'price': '10'},
      {'image_url': 'images/image3.jpeg', 'name': 'image 3', 'price': '15'},

    ];

    List<String>images =imagesList.map<String>((e) => e['image_url']).toList();

    return Scaffold(
      extendBodyBehindAppBar: true,
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        backgroundColor: Colors.white,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),

        child: Column(children: [
          UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.black26),

              currentAccountPicture: ClipRRect(borderRadius: BorderRadius.circular(30),
                  child: Image.asset('images/image3.jpeg',fit: BoxFit.fill,)),
              accountName: Text('azeez Taweel'),
              accountEmail: Text(' azeezTaweel@.com')),
          ListTileWidget('Home', Icon(Icons.home) as IconButton),
          ListTileWidget('part', Icon(Icons.mail_sharp) as IconButton),
          ListTileWidget('more', Icon(Icons.more_rounded) as IconButton),
          Spacer(),
          ListTileWidget('Log out', Icon(Icons.logout_outlined) as IconButton)
        ]),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: Icon(Icons.arrow_back_ios_new),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              fav =!fav;
              print(fav);
            });
          }, icon: Icon(Icons.favorite),color: fav ?Colors.redAccent :Colors.white),
          Container(margin: EdgeInsets.all(7), child: Icon(Icons.add_circle)),

        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  child: Image.asset('images/image1.jpeg',
                      width: double.infinity,
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height /2))),
          Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Nusa Penida',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Static images are a core part of mobile applications. Usually, you store them in the directory in their original sizes, which requires you to adjust the sizes now and then, depending on where they are displayed. This article discusses how to resize images in Flutter and adjust their width, height, and size with efficient lines of code.',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Nusa Penida',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 87,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imagesList.length,
                          itemBuilder: (context, index) {
                            return PictureModel(categories_data[index].imageUrl);
                          },
                        ),
                      ),

                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text('More in Bail' ,style: TextStyle(fontSize: 18,color: Colors.lightGreen)),
                              Icon(Icons.navigate_next,color: Colors.green,)
                            ],
                          ))],
                  )))
   ,     ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  late String text;
  late IconButton icon;



  ListTileWidget(this.text, this.icon);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      selectedColor: Colors.amber,
      title: Text(text),
    );
  }
}

class PictureModel extends StatelessWidget {
  String imageUrl;

  PictureModel(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        child: Image.network(imageUrl, width: 70, height: 60,fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(10)
      ),
    );

  }
}
