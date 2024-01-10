import 'package:hive_flutter/hive_flutter.dart';

class toDoDataBase {
  List toDoList = [];
  // reference
  final _mybox = Hive.box('mybox');
  void createInitialData() {
    toDoList = [
      ["make tutorial", false],
      ["Do Exercise", false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
