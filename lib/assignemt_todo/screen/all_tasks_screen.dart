import 'package:flutter/material.dart';
import 'package:home_work/assignemt_todo/model/todo_provider.dart';
import 'package:provider/provider.dart';

import '../../assignemt1/assignment _1.dart';
import '../../assignemt1/widget/list_tile_widget.dart';
import 'fragment/complete_tasks_fragment.dart';
import 'fragment/in_complete_tasks_fragment.dart';
import 'fragment/tasks_fragment.dart';

class AllTasksScreen extends StatefulWidget {

  const AllTasksScreen({Key? key}) : super(key: key);


  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();

}



class _AllTasksScreenState extends State<AllTasksScreen>with SingleTickerProviderStateMixin {
  late TabController tabsController;

  tabControllerFunc(){
    tabsController=TabController(length: 3, vsync: this);

  }

  @override
  void initState() {
    tabControllerFunc();
  }

  updateUiFunction(){
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoProvider>(
      create: (context) => TodoProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('To Do App'),
          bottom: TabBar(controller: tabsController,tabs: [
           
           Tab(
              icon: Icon(Icons.cabin_outlined),text: 'All Tasks',),
               Tab(icon: Icon(Icons.done_all_sharp), text: 'Complete'),
            Tab(icon: Icon(Icons.cancel_rounded), text: 'In Complete')
          ]),
        ),
          drawer: Drawer(
            backgroundColor: Colors.white,
            shape: ContinuousRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),

            child: Column(children: [
              UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.black26),

                  currentAccountPicture: ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: Image.asset('images/image1.jpeg',fit: BoxFit.fill,)),
                  accountName: Text('azeez Taweel'),
                  accountEmail: Text(' azeezTaweel@.com')),
              ListTileWidget(text: 'All Tasks', icon: Icon(Icons.home_filled),tabController: tabsController,value: 0),
              ListTileWidget(text: 'Completed Tasks', icon: Icon(Icons.task_alt_outlined),tabController: tabsController,value: 1)
,            ListTileWidget(text: ' In Completed Tasks', icon: Icon(Icons.cancel_sharp),tabController: tabsController,value:2)

              ,
             Spacer(),
            ]),
          ),
        body:TabBarView(controller: tabsController,children: [
          TasksFragment(),
          InCompleteTasksFragment(),
          CompleteTasksFragment()
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
