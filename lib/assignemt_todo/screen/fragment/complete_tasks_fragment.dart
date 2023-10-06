import 'package:flutter/material.dart';
import 'package:home_work/assignemt_todo/model/todo_provider.dart';
import 'package:provider/provider.dart';

import '../../../data/todo_data.dart';
import '../../widget/task_widget.dart';


class CompleteTasksFragment extends StatefulWidget {

   CompleteTasksFragment({Key? key}) : super(key: key);

  @override
  State<CompleteTasksFragment> createState() => _TasksWidgetState();
}


class _TasksWidgetState extends State<CompleteTasksFragment> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(builder: (context, value, child) {
    return ListView.builder(
        itemCount: value.completeTask().length,
        itemBuilder: (context, index) {
          return TaskWidget(task:value.completeTask()[index]);

        },
      );
    },

    );
  }
}
