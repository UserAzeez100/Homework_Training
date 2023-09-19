import 'package:flutter/material.dart';

import '../../../data/todo_data.dart';
import '../../widget/task_widget.dart';


class CompleteTasksFragment extends StatefulWidget {
   Function updateUi;

   CompleteTasksFragment({Key? key,required this.updateUi}) : super(key: key);

  @override
  State<CompleteTasksFragment> createState() => _TasksWidgetState();
}


class _TasksWidgetState extends State<CompleteTasksFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.where((element) => !element.isComplete).length,
      itemBuilder: (context, index) {
        return TaskWidget(task: tasks.where((element) => !element.isComplete).toList()[index], updateUi: widget.updateUi,);

      },
    );
  }
}
