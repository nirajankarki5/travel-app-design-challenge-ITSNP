import 'package:flutter/material.dart';
import 'package:flutter_travel_itsnp/widgets/my_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffececec),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: const [
            SizedBox(height: 10),
            MyAppBar(),
            SizedBox(height: 10),
            Text(
              "Hi, Rounak!",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Text(
              "Where do \nyou want to go?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
