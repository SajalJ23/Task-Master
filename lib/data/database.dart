import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //reference the box
  final _myBox = Hive.box('mybox');

  // Run methord if first time opening this app
  void createInitialData() {
    toDoList = [
      ["Brew Coffee", false],
      ["Do Homework", false]
    ];
  }

  // load data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
