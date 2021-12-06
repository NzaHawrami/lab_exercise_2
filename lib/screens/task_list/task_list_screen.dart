import "package:flutter/material.dart";
import "bar.dart";
import "body.dart";
import "../../models/todo.dart";

class TaskScreen extends StatefulWidget {
  final Todo data;
  TaskScreen(this.data);

  @override
  TaskState createState() => TaskState();
}

class TaskState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: Bar(widget.data),
        body: Body(widget.data),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton.extended(
            heroTag: null, // to remove the heroTag warning
            /* here using the pop function we are going back to the previous
               screen with data, that will be returned and will be assigned */
            onPressed: () => Navigator.of(context).pop(widget.data), 
            label: const Text('update')),
          FloatingActionButton.extended(
            heroTag: null, 
            /* here we are going to return null, meaning no data will be returned using the pop*/
            onPressed: () => Navigator.of(context).pop(null), 
            label: const Text('cancel') ),
        ]),
      ),
    );
  }
}
