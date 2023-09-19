import 'package:flutter/material.dart';
import 'package:home_work/model/Task.dart';

class TaskWidget extends StatefulWidget {
   TaskWidget({Key? key,required this.task,required this.updateUi}) : super(key: key);

final Task task;
Function updateUi;

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),

      child: CheckboxListTile(

        title:Text(widget.task.name),
        subtitle:Text('${widget.task.isComplete}'),
checkboxShape: OvalBorder(),


        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        hoverColor: Colors.black26,


        tileColor:!widget.task.isComplete? Color(0xFFE57373) :Colors.tealAccent,
        value: widget.task.isComplete, onChanged: (value) {

          widget.task.isComplete=value!;
          widget.updateUi();


      },
      ),
    );
  }
}
