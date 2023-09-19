import 'package:flutter/material.dart';

class Assignment_3 extends StatefulWidget {
  const Assignment_3({Key? key}) : super(key: key);

  @override
  State<Assignment_3> createState() => _Assignment_3State();
}

double price = 0;
int counter=1;

class _Assignment_3State extends State<Assignment_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset('images/image3.jpeg', fit: BoxFit.fill),
        Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'بيتزا بالخضار',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Text(
                ' بيتزا بالخضار مميزه ',
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.normal,
                    fontSize: 18),
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {
                          if(counter<10){
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
                              if(counter>1){
                                counter--;
                                setState(() {});
                              }
                          },
                          icon: Icon(Icons.remove ),
                          color: Colors.blue)
                    ]),
                  ),
                  Spacer(),
                  Text('ر.أ${price}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
