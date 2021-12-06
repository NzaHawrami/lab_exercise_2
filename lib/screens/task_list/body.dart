import "package:flutter/material.dart";
import "../../models/todo.dart";


class Body extends StatefulWidget {
  final Todo data;

  Body(this.data);

  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: widget.data.taskNum.length,
        separatorBuilder: (context, index) => const Divider(
              color: Colors.blueGrey,
            ),
        itemBuilder: (context, index) => ListTile(
              subtitle: Text(widget.data.taskNum[index].taskName,
                  style: TextStyle(
                      decoration: ((widget.data.taskNum[index].checked == true)
                          ? TextDecoration.lineThrough
                          : TextDecoration.none))),
                /* here we are going to remove a data in the taskNum, 
                    so when we are running the taskNum data, it will be removed */
              onLongPress: () => 
                  setState(() => widget.data.taskNum.removeAt(index)),
                  /* using this function we are going change the state of the text, 
                      from checked to not checked and viceversa */
              onTap: () => setState(() => {
                    if (widget.data.taskNum[index].checked == true)
                      {widget.data.taskNum[index].checked = false}
                    else
                      {widget.data.taskNum[index].checked = true}
                  }),
            ));
  }
}
