import 'package:flutter/material.dart';

import '../../../data/todo_data.dart';
import '../../widget/task_widget.dart';


class TasksFragment extends StatefulWidget {
  Function updateUi;


   TasksFragment({Key? key,required this.updateUi}) : super(key: key);

  @override
  State<TasksFragment> createState() => _TasksWidgetState();
}


class _TasksWidgetState extends State<TasksFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(task: tasks[index], updateUi:  widget.updateUi,);
      },
    );
  }
}
