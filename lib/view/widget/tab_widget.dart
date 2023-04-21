import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            side: const BorderSide(width: 2.0, color: Colors.white),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            )
          ),
          onPressed: () {
            // Perform some action
          },
          child: const Text(
            'Indoor',
            semanticsLabel: 'OUTLINE BUTTON 1',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              side: const BorderSide(width: 2.0, color: Colors.white),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              )
          ),
          onPressed: () {
            // Perform some action
          },
          child: const Text(
            'Outdoor',
            semanticsLabel: 'OUTLINE BUTTON 1',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
