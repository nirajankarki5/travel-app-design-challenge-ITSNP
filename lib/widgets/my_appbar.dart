import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // color: Colors.yellow,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.menu_rounded,
            size: 30,
          ),
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage("assets/images/avatar.png"),
          )
        ],
      ),
    );
  }
}
