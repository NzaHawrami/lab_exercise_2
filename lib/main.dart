import "package:flutter/material.dart";
import "./models/mock_data.dart";
import "./screens/todo_list/todo_list_screen.dart";

void main() => runApp(MyApp());


/* this is the main function to run the application through main */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* in the home we are going to make the first screen functional, 
      and send back the mockdata*/
      home: TodoScreen(myTodo),
      /* here we choose the theme */
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
