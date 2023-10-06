
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'Task.dart';

class TodoProvider extends ChangeNotifier{







List<Task> tasks=[
  Task(name: 'playing',id: 1),
  Task(name: 'good',id: 2),
  Task(name: 'bad',id: 3),
  Task(name: 'red red',id: 4),
  Task(name: 'lab',id: 5),
  Task(name: 'Ios',id: 6),

];



List<Task> completeTask(){
  return tasks.where((task) => !task.isComplete).toList();

}
List<Task> InComplete(){
  return tasks.where((task) =>task.isComplete).toList();


}

List<Task> allTasks(){
  return tasks;

}
updateStateToDo(Task task) {
  task.isComplete=!task.isComplete;
  notifyListeners();


}}