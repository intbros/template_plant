import 'package:flutter/material.dart';
import 'package:plant/view/menu/details_page_bottom_menu.dart';
import 'package:plant/view/widget/copyright_widget.dart';
import 'package:plant/view/widget/stateline_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body:SingleChildScrollView(
      child: Stack(alignment: Alignment.bottomLeft, children: [
        Container(
          alignment: Alignment.bottomLeft,
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.7,
        ),
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
                    radius: 135,
                    backgroundColor: Color(0xFFE7E7E9),
                    child : CircleAvatar(
                      radius:120,
                        backgroundColor: Colors.white,
                        child:ClipOval(
                          child : Image( image: AssetImage('assets/images/plant_image01.png') )
                        ),
                    ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Plant Name',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 40,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 40,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 40,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 40,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.star,
                      size: 40,
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                children: [
                  StateLineWidget( title: 'Lorem Ipsum', width: 150, lineSize: 40,),
                  const Spacer(),
                  StateLineWidget( title: 'Lorem Ipsum', width: 150, lineSize: 20,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  StateLineWidget( title: 'Lorem Ipsum', width: 150, lineSize: 10,),
                  const Spacer(),
                  StateLineWidget( title: 'Lorem Ipsum', width: 150, lineSize: 100,),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        child: Column(
            mainAxisSize : MainAxisSize.min,
          children : const [
            DetailsPageBottomMenu(),
            CopyrightWidget(),
          ]
        ),
      ),
    );
  }
}
