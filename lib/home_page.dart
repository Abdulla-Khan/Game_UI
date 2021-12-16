import 'package:flutter/material.dart';
import 'package:game_ui/constants/colors.dart';
import 'package:game_ui/widgets/category.dart';
import 'package:game_ui/widgets/header.dart';

import 'widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(children: [
              Header(),
              Search(),
              Category(),
            ])
          ],
        ),
      ),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBottom() {
    return Container(
      color: Color(0xFFF6F8FF),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: kPrimary,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              unselectedItemColor: Colors.grey.withOpacity(.7),
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
                buildItem('Application', Icons.more_horiz_outlined),
                buildItem('Film', Icons.play_arrow_rounded),
                buildItem('Book', Icons.auto_stories_rounded),
              ]),
        ),
      ),
    );
  }

  BottomNavigationBarItem buildItem(String text, IconData icon) {
    return BottomNavigationBarItem(
      label: text,
      icon: Container(
        margin: EdgeInsets.only(bottom: 5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: 30,
          color: Colors.grey,
        ),
      ),
    );
  }
}
