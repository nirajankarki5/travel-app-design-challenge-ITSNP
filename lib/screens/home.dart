import 'package:flutter/material.dart';
import 'package:flutter_travel_itsnp/models/popular.dart';
import 'package:flutter_travel_itsnp/models/recommended.dart';
import 'package:flutter_travel_itsnp/widgets/category_tab.dart';
import 'package:flutter_travel_itsnp/widgets/my_appbar.dart';
import 'package:flutter_travel_itsnp/widgets/popular_card.dart';
import 'package:flutter_travel_itsnp/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e4e4),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
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
            SizedBox(height: 25),
            Text(
              "Recommended",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(height: 15),
            Container(
              height: 130,
              // color: Colors.yellow,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          height: 130,
                          width: 270,
                          padding: const EdgeInsets.only(right: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: AssetImage(recommendedList[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 8,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                recommendedList[index].placeName,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(height: 15),
            Text(
              "Popular Places",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(height: 10),
            Column(
              children:
                  popularList.map((e) => PopularCard(popular: e)).toList(),
            )
          ],
        ),
      ),
    );
  }
}
