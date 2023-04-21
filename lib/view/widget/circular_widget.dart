import 'package:flutter/material.dart';

class CircularWidget extends StatefulWidget {
  int price;
  CircularWidget({Key? key, required this.price}) : super(key: key);

  @override
  State<CircularWidget> createState() => _CircularWidgetState();
}

class _CircularWidgetState extends State<CircularWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
        color: Color(0xFF96D9D2),
        shape: BoxShape.circle,
      ),
      child: Text( '\$${widget.price}',
        style: const TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
