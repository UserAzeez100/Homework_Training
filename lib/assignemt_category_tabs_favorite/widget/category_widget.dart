
import 'package:flutter/material.dart';

import '../../assignemt3_products/model/Category.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({Key? key,required this.category,required this.updateUi}) : super(key: key);

  Category category;
  Function updateUi;


  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}


bool fav = false;
String text="";
List<String> textList=[];

// GlobalKey<FormState> formStateKey = new GlobalKey<FormState>();
TextEditingController _controller =TextEditingController();
//
// checkInputText(){
//   var stat=formStateKey.currentState;
//   stat!.validate()?print('valid'):print('Invalid') ;
//   stat.save();
//
// }
class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {

  return
      Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade100,
            ),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        fit: BoxFit.fill,
                        height: 200,
                        width: double.infinity,
                        '${widget.category.imageUrl}')),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text(
                        '${widget.category.title}'
                        ,
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            widget.category.favoriteState = !widget.category.favoriteState;
                            print(widget.category.favoriteState);
                            widget.updateUi();

                          },
                          icon: Icon(Icons.favorite),
                          color: widget.category.favoriteState ? Colors.red : Colors.black12)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    // key: formStateKey,
                    child: TextFormField(
                      autofocus: false,
                      controller: _controller,
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'this field required 😥';
                        }else
                          'added successfully 😊';
                        text=  _controller.text;
                        textList.add(text);
                        _controller.clear();

                        // formStateKey.currentState!.reset();
                        // print(formStateKey.currentState.toString().length);
                      },
                      decoration: InputDecoration(
                          filled: true,fillColor: Colors.white12,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white,width: 1.2)),
                          labelText: 'Write Assignment',labelStyle: TextStyle(color: Colors.black54),suffixIcon: IconButton(onPressed: (){
                        // checkInputText();
                        setState(() {});
                      }, icon: Icon(Icons.send,))),
                    ),
                  ),

                ),
                SizedBox(
                  height: 70,
                  child: ListView.builder(itemCount:textList.length ,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(elevation: 1 ,label:Container(padding: EdgeInsets.all(5),child: Text(textList[index]),decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.black12),color: Colors.white))),
                    );
                  }),
                )
              ],
            ));
  }
}
