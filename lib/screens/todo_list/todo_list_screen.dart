/* 
this is the file that we will have the first screen in,
*/

import 'package:flutter/material.dart';
import "bar.dart";
import "body.dart";
import "../../models/todo.dart";


/* since the screen will change we will put the stateful widget extension*/
class TodoScreen extends StatefulWidget {
  // const TodoScreen({Key? key}) : super(key: key);
  final List<Todo> mock;
  const TodoScreen(this.mock, {Key? key}) : super(key: key);
  @override
  State<TodoScreen> createState() => TodoScreenState();
}

class TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarState(),
      body: Body(widget.mock),
    );
  }
}
