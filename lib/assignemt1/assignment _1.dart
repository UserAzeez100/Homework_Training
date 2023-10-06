import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_work/assignemt1/widget/list_tile_widget.dart';
import 'package:home_work/data/category_data.dart';
import 'package:home_work/main.dart';
import 'package:provider/provider.dart';

import '../custom_shape.dart';

class Assignment_1 extends StatefulWidget {
  @override
  State<Assignment_1> createState() => _Assignmet_1State();
}

class _Assignmet_1State extends State<Assignment_1> {
  bool fav = false;
  bool languege = false;

  @override
  Widget build(BuildContext context) {
    List<Map> imagesList = [
      {'image_url': 'images/image1.jpeg', 'name': 'image 1', 'price': '122'},
      {'image_url': 'images/image2.jpeg', 'name': 'image 2', 'price': '10'},
      {'image_url': 'images/image3.jpeg', 'name': 'image 3', 'price': '15'},
      {'image_url': 'images/image2.jpeg', 'name': 'image 2', 'price': '10'},
      {'image_url': 'images/image3.jpeg', 'name': 'image 3', 'price': '15'},
    ];

    // ShapeBorder rectangle=RectangleShapeBorder(
    //     borderRadius: DynamicBorderRadius.only(
    //         topLeft: DynamicRadius.circular(10.toPXLength),
    //         bottomRight: DynamicRadius.elliptical(60.toPXLength, 10.toPercentLength))
    // );

    List<String> images =
        imagesList.map<String>((e) => e['image_url']).toList();

    return Scaffold(
      extendBodyBehindAppBar: true,
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20)),
        child: Column(children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black26),
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'images/image3.jpeg',
                    fit: BoxFit.fill,
                  )),
              accountName: Text('azeez Taweel'),
              accountEmail: Text(' azeezTaweel@.com')),
          ListTileWidget(
            icon: Icon(Icons.home),
            text: 'home_page'.tr(),
          ),
          ListTileWidget(text: 'part', icon: Icon(Icons.mail_sharp)),
          ListTileWidget(text: 'more'.tr(), icon: Icon(Icons.more_rounded)),
          SwitchListTile(
              title: Text('change_language'.tr()),
              subtitle: Text('language'.tr()),
              value: true,
              onChanged: (v) {
                languege = !v;
                setState(() {});
                Locale local = context.locale;
                if (local == Locale('ar')) {
                  context.setLocale(Locale('en'));
                } else
                  context.setLocale(Locale('ar'));
              }),
          SwitchListTile(
            value: Provider.of<AppController>(context, listen: false).isDark,
            onChanged: Provider.of<AppController>(context).onChange(),
            title: Text('mood'.tr()),
          ),
          Spacer(),
          ListTileWidget(text: 'Log out', icon: Icon(Icons.logout_outlined))
        ]),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: Icon(Icons.arrow_back_ios_new),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  fav = !fav;
                  print(fav);
                });
              },
              icon: Icon(Icons.favorite),
              color: fav ? Colors.redAccent : Colors.white),
          Container(margin: EdgeInsets.all(7), child: Icon(Icons.add_circle)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                child: ClipRRect(
                  child: Image.asset('images/image1.jpeg',
                      width: double.infinity,
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 2),
                ),
              )),
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
                        'name'.tr(),
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
                          itemCount: imagesList.length+1,
                          itemBuilder: (context, index) {

                            // if (index==0) {
                            //  return Container(
                            //       color: Colors.red, width: 200, height: 400);
                            // } else
                            return  PictureModel(categories_data[index].imageUrl);
                          },
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text('More in Bail',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.lightGreen)),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.green,
                              )
                            ],
                          ))
                    ],
                  ))),
        ],
      ),
    );
  }
}

class BestButton extends StatelessWidget {
  const BestButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 500.0,
      color: Color(0xff392f41),
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
        color: Color(0xff392f41),
        child: Container(
          width: 100,
          height: 100,
          child: Icon(
            Icons.star,
            size: 33,
            color: Colors.amber,
          ),
          decoration: BoxDecoration(
            color: Color(0xff392f41),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff1b1123),
                Color(0xff574d5f),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff574d5f),
                offset: Offset(-20.0, -20.0),
                blurRadius: 20,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color(0xff1b1123),
                offset: Offset(20.0, 20.0),
                blurRadius: 20,
                spreadRadius: 0.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PictureModel extends StatelessWidget {
  String imageUrl;

  PictureModel(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
            child: Image.network(
              imageUrl,
              width: 70,
              height: 60,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
