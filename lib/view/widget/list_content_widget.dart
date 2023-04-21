import 'package:flutter/material.dart';
import 'package:plant/view/widget/stateline_widget.dart';

import 'circular_widget.dart';

class ListContentWidget extends StatefulWidget {
  const ListContentWidget({Key? key}) : super(key: key);

  @override
  State<ListContentWidget> createState() => _ListContentWidgetState();
}

class _ListContentWidgetState extends State<ListContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //plant image
            const Image(
                width: 120,
                height: 200,
                fit: BoxFit.fill,
                image: AssetImage('assets/images/plant_image01.png')),
            Expanded(
              child: Column(
                children: [
                  //==============================
                  //plant name
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Plant Name',
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, diam nonummy.',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StateLineWidget(
                              title: 'Lorem Ipsum',
                              width: 110,
                              lineSize: 40,
                            ),
                            StateLineWidget(
                                title: 'Lorem Ipsum',
                                width: 110,
                                lineSize: 100),
                            StateLineWidget(
                                title: 'Lorem Ipsum', width: 110, lineSize: 10),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CircularWidget(price: 10,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
