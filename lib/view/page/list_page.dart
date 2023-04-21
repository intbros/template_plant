import 'package:flutter/material.dart';
import 'package:plant/view/page/details_page.dart';
import 'package:plant/view/widget/copyright_widget.dart';

import '../menu/list_page_bottom_menu.dart';
import '../widget/list_content_widget.dart';
import '../widget/tab_widget.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello! Plants',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: TabWidget(),
              );
            }

            index -= 1;

            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                child: const ListContentWidget(),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsPage(),
                    ),
                  );
                },
              ),
            );
          }),
      bottomNavigationBar: BottomAppBar(
          color: const Color(0x0096d9d2),
          elevation: 0,
          child: Column(mainAxisSize: MainAxisSize.min, children: const [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListPageBottomMenu(),
            ),
            CopyrightWidget(),
          ])),
    );
  }
}
