import "package:flutter/material.dart";


class BarState extends StatelessWidget with PreferredSizeWidget {
  BarState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      title: const Text("My To Do List", style: TextStyle(fontSize: 15)),
      backgroundColor: Colors.purple,
    );
  }
  /* this is used to override the error, of PreferredSizeWidget problem`*/
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
