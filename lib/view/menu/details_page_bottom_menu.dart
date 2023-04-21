import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPageBottomMenu extends StatefulWidget {
  const DetailsPageBottomMenu({Key? key}) : super(key: key);

  @override
  State<DetailsPageBottomMenu> createState() => _DetailsPageBottomMenu();
}

class _DetailsPageBottomMenu extends State<DetailsPageBottomMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
            padding: EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: null,
              icon: Icon(Icons.favorite, color: Color(0xFF96d9d2)),
              iconSize: 40,
            )),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.only(right: 40),
            child: ElevatedButton(
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  )
              ),
              onPressed: () {
                // Perform some action
              },
              child: const Text(
                'Buy IT NOW',
                semanticsLabel: 'OUTLINE BUTTON 1',
                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
        ),
      ],
    );
  }
}
