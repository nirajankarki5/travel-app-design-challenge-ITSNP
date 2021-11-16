import 'package:flutter/material.dart';
import 'package:flutter_travel_itsnp/widgets/category_tab.dart';
import 'package:flutter_travel_itsnp/widgets/my_appbar.dart';
import 'package:flutter_travel_itsnp/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e4e4),
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 25),
            SearchBar(),
            SizedBox(height: 30),
            CategoryTab(),
          ],
        ),
      ),
    );
  }
}
