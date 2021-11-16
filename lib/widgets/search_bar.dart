import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    );
    return Container(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white60,
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
          suffixIcon: const Icon(
            Icons.mic_none_outlined,
            size: 28,
            color: Colors.grey,
          ),
          enabled: true,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}
