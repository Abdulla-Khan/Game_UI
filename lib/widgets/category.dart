import 'package:flutter/material.dart';
import 'package:game_ui/widgets/newest.dart';
import 'package:game_ui/widgets/popular_games.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);
  final list = [
    {
      'icon': Icons.track_changes_outlined,
      'color': Color(0xFF605CF4),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': Color(0xFFFC77F6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {'icon': Icons.sports_esports, 'color': Color(0xFF7182F2), 'title': 'More'}
  ];
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xFFF6F8FF),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              height: 140,
              padding: EdgeInsets.all(25),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: list[index]['color'] as Color),
                            child: Icon(
                              list[index]['icon'] as IconData,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            list[index]['title'] as String,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(.7),
                                fontSize: 16),
                          )
                        ],
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        width: 33,
                      ),
                  itemCount: list.length),
            ),
            _buildTitle('Popular Game'),
            Popular(),
            _buildTitle('Newest Game'),
            Newest(),
          ],
        ));
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
