import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      // color: Colors.yellow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          card(Icons.flight, "Flights", Colors.black),
          card(Icons.train, "Trains"),
          card(Icons.hotel, "Hotels"),
          card(Icons.restaurant, "Restaurants"),
          card(Icons.spa, "Spa"),
        ],
      ),
    );
  }

  Widget card(icon, text, [color]) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 53,
            width: 53,
            decoration: BoxDecoration(
                color: color != null ? color : Colors.white,
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Icon(
                icon,
                color: color != null ? Colors.white : Colors.black,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
