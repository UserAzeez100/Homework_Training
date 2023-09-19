import 'package:flutter/material.dart';
import '../../../data/todo_data.dart';
import '../../widget/task_widget.dart';


class InCompleteTasksFragment  extends StatefulWidget {
  Function updateUi;


   InCompleteTasksFragment({Key? key,required this.updateUi}) : super(key: key);

  @override
  State<InCompleteTasksFragment> createState() => _TasksWidgetState();
}


class _TasksWidgetState extends State<InCompleteTasksFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.where((element) => element.isComplete).length,
      itemBuilder: (context, index) {
        return TaskWidget(task:tasks.where((element) => element.isComplete).toList()[index], updateUi:  widget.updateUi,);

      },
    );
  }
}
