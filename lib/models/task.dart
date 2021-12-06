import "package:flutter/material.dart";

class Task {
  String taskName;
  bool checked = false;

  Task(this.taskName, this.checked);
  // Task.copy(Task from) : this(from.taskName, from.checked);

}
