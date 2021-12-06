import "package:flutter/material.dart";
import "task.dart";

class Todo {
  String title;
  List<Task> taskNum;
  int count = 0;
  double percent = 0;
  
  Todo(this.title, this.taskNum) {
    /* here we are running the function of the per() to get percentage of the 
        checked and the count of the checked ones*/
    per();
  }

/* here we are going to copy the data from another todo to this one todo*/
  Todo.copy(Todo from) : this(from.title, [...from.taskNum]);

  void per() {
    count = 0;
    double number = (100 / taskNum.length);
    /* getting count of each the tasks that are checked */
    taskNum.forEach((element) => element.checked == true ? count += 1 : count);

    percent = (count * number);
  }

}
