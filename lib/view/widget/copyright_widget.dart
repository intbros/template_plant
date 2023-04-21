import 'package:flutter/cupertino.dart';

class CopyrightWidget extends StatefulWidget {
  const CopyrightWidget({Key? key}) : super(key: key);

  @override
  State<CopyrightWidget> createState() => _CopyrightWidgetState();
}

class _CopyrightWidgetState extends State<CopyrightWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Program by Intros (intbros@gmail.com)'),
        Text('Designed by Freepik (www.freepik.com)'),
      ],
    );
  }
}
