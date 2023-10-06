import 'package:flutter/material.dart';
import 'package:home_work/assignemt_todo/model/todo_provider.dart';
import 'package:provider/provider.dart';
import '../model/Task.dart';

class TaskWidget extends StatelessWidget {
   TaskWidget({Key? key,required this.task}) : super(key: key);

final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),

      child: CheckboxListTile(

        title:Text(task.name,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 16),),
        subtitle:Text('${task.isComplete}'),
  checkboxShape: OvalBorder(),


        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        hoverColor: Colors.black26,side: BorderSide(color:Colors.black26 ),fillColor: MaterialStatePropertyAll(Colors.grey),


        tileColor:!task.isComplete?Color(0xFFE57373) :Colors.tealAccent,
        value: task.isComplete, onChanged: (value) {
          Provider.of<TodoProvider>(context,listen: false).updateStateToDo(task);
          // widget.updateUi();


      },
      ),
    );
  }
}
