import 'package:flutter/material.dart';

class ListPageBottomMenu extends StatefulWidget {
  const ListPageBottomMenu({Key? key}) : super(key: key);

  @override
  State<ListPageBottomMenu> createState() => _ListPageBottomMenuState();
}

class _ListPageBottomMenuState extends State<ListPageBottomMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Spacer(),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          iconSize: 40,
        ),
        Spacer(),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            iconSize: 40),
        Spacer(),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            iconSize: 40),
        Spacer(),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.apps,
              color: Colors.white,
            ),
            iconSize: 40),
        Spacer(),
      ],
    );
  }
}
