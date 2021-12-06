import 'package:flutter/material.dart';

class Bar extends StatefulWidget with PreferredSizeWidget {
  var data;

  Bar(this.data);

  @override
  State<Bar> createState() => _BarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: Container(),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
        /* here we are going to put the data title of the todo list*/
        title: Text("Task List of ${widget.data.title}",
            style: TextStyle(fontSize: 15)),
        backgroundColor: Colors.purple,
        centerTitle: true);
  }
}
