import 'package:flutter/material.dart';
import 'package:home_work/data/todo_data.dart';
import 'package:home_work/screen/fragment/complete_tasks_fragment.dart';
import 'package:home_work/screen/fragment/in_complete_tasks_fragment.dart';
import 'package:home_work/widget/task_widget.dart';

import 'fragment/tasks_fragment.dart';

class AllTasksScreen extends StatefulWidget {

  const AllTasksScreen({Key? key}) : super(key: key);


  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();

}


class _AllTasksScreenState extends State<AllTasksScreen> {
  updateUiFunction(){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('To Do App'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.cabin_outlined),text: 'All Tasks',),
               Tab(icon: Icon(Icons.done_all_sharp), text: 'Complete'),
            Tab(icon: Icon(Icons.cancel_rounded), text: 'In Complete')
          ]),
        ),
        body:TabBarView(children: [
          TasksFragment(updateUi:updateUiFunction ),
          InCompleteTasksFragment(updateUi: updateUiFunction),
          CompleteTasksFragment(updateUi: updateUiFunction)
        ])


      ),
    );
  }
}

//
// class TasksFragment extends StatefulWidget {
//   Function updateUi;
//
//
//    TasksFragment({Key? key,required this.updateUi}) : super(key: key);
//
//   @override
//   State<TasksFragment> createState() => _TasksWidgetState();
// }
//
//
// class _TasksWidgetState extends State<TasksFragment> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: tasks.length,
//       itemBuilder: (context, index) {
//         return TaskWidget(task: tasks[index], updateUi: ,);
//       },
//     );
//   }
// }
