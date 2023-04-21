import 'package:flutter/material.dart';

class StateLineWidget extends StatefulWidget {
  String title;
  double width;
  double lineSize;

  StateLineWidget(
      {Key? key,
      required this.title,
      required this.width,
      required this.lineSize})
      : super(key: key);

  @override
  State<StateLineWidget> createState() => _StateLineWidgetState();
}

class _StateLineWidgetState extends State<StateLineWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( widget.title ),
        SizedBox(
          width: widget.width,
          child: Stack(children: [
            const Divider(color: Color(0xFFE7E7E7), thickness: 10),
            SizedBox(
                width: widget.lineSize,
                child: const Divider(color: Colors.orange, thickness: 10)),
          ]),
        ),
      ],
    );
  }
}
