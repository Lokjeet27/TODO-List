import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];
  // securing the use of tasks list by any other code;
  // using unmodifiable list view
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void changeInList(String newString) {
    _tasks.add(
      Task(name: newString),
    );
    notifyListeners();
  }

  void updateList(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    print("deleteTask was called.");
    notifyListeners();
  }
}
