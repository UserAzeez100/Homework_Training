// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Traning_1 extends StatefulWidget {
  const Traning_1({Key? key}) : super(key: key);

  @override
  State<Traning_1> createState() => _Traning_1State();
}

double price = 0;
int counter = 1;
int sizeGroup = 0;


class _Traning_1State extends State<Traning_1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(children: [
        ClipRRect(
            borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(10),
                bottomStart: Radius.circular(10)),
            child: Image.asset('images/images.jpeg',
                fit: BoxFit.contain, width: double.infinity)),
        Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'meat Pizza',
                style: TextStyle(
                    color: Colors.black54.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'good pizza yami',
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.normal,
                    fontSize: 18),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Text('${price}' + " ₪",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                  Spacer(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {
                          if (counter < 10) {
                            counter++;
                            setState(() {});
                          }
                        },
                        icon: Icon(Icons.add),
                        color: Colors.blue,
                      ),
                      Text('${counter}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      IconButton(
                          onPressed: () {
                            if (counter > 1) {
                              counter--;
                              setState(() {});
                            }
                          },
                          icon: Icon(Icons.remove),
                          color: Colors.blue)
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(height: 3, color: Colors.black38),
        Container(
          margin: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.all(10),
                alignment: FractionalOffset.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(7),
                  color: Colors.black12.withOpacity(0.06),
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: sizeGroup,
                        onChanged: (x) {
                          sizeGroup = x!;
                          setState(() {});
                        }),
                    Text('step1',
                        style: TextStyle(

                            color: Colors.black87,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text(
                      'color',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black38),
                    )
                  ],
                ))
          ,Container(
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.all(10),
                    alignment: FractionalOffset.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(7),
                      color: Colors.black12.withOpacity(0.06),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: sizeGroup,
                            onChanged: (x) {
                              sizeGroup = x!;
                              setState(() {});
                            }),
                        Text('step1',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                        Spacer(),
                        Text(
                          'color',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, color: Colors.black38),
                        )
                      ],
                    )),Container(
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.all(10),
                    alignment: FractionalOffset.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(7),
                      color: Colors.black12.withOpacity(0.06),
                    ),
                    padding: EdgeInsets.all(5),

                    child: GestureDetector(
                      onTap: () {
                        sizeGroup=2;
                        setState(() {
                          print(sizeGroup);
                        });
                      },
                      child: Row(
                        children: [
                          Radio(
                              value: 3,
                              groupValue: sizeGroup,
                              onChanged: (x) {
                                sizeGroup = x!;
                                setState(() {});
                              }),
                          Text('step1',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text(
                            'color',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, color: Colors.black38),
                          )

              ]),
                    ),
        )
    ,RadioListTile(secondary: Text("5555sd"),title:Text('5455ddd'),value: 1, groupValue: sizeGroup, onChanged: (v){
                  sizeGroup=v!;setState(() {});
                  print(sizeGroup);



                } ,
                  shape:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color:sizeGroup==1?  Colors.amberAccent: Colors.black12,width: 4)) , )],
              ))

      ]),
    );
  }
}
