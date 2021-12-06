/* 
this will hold the body for the todo list screen (first screen)
*/
import "package:flutter/material.dart";
import "../../models/todo.dart";
import "../../models/mock_data.dart";
import '../task_list/task_list_screen.dart';



class Body extends StatefulWidget with PreferredSizeWidget {
  final List<Todo> mock;

  /* 
  we will send back the mock data through the first screen, to the body constructor.
  */
  Body(this.mock, {Key? key}) : super(key: key);

  @override
  BodyState createState() => BodyState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class BodyState extends State<Body> {
  Text? cal(index, pos) {
    widget.mock[index].per();
    if (pos == 0) {
      return Text(
          'this list has ${ myTodo[index].taskNum.length - myTodo[index].count }');
    } else {
      return Text("${myTodo[index].percent}");
    }
  }



/* 
  this is an asynchronous function using this function, we can navigate to the 
  index of the data screen
*/
  void _navigate(index) async {
    /* using navigator is one way to navigate in flutter, 
      we can also use routes, everytime we create this navigator.push, 
      it will push another screen using the data we provided in the class constructor
    */
    final returnData = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TaskScreen(widget.mock[index])));
    /* we make sure that the data is not null then we bring back the data we have got
       in the pop of the othe screen, this is just a void call to make change in the mock data
       using setState() */
    if (returnData != null) {
      setState(() => widget.mock[index] = returnData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: myTodo.length,
        separatorBuilder: (context, index) => const Divider(
              color: Colors.blueGrey,
            ),
        itemBuilder: (context, index) => ListTile(
              title: Text(myTodo[index].title),
              subtitle: cal(index, 0),
              trailing: CircleAvatar(
                child: cal(index, 1),
              ),
              /* 
                here we are using navigate function with the index of the data included
              */ 
              onTap: () {
                setState(() => _navigate(index));
              },
            ));
  }
}
