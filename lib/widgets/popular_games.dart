import 'package:flutter/material.dart';
import 'package:game_ui/model/game.dart';

import '../details_page.dart';

class Popular extends StatelessWidget {
  final List<Game> list = Game.geneGame();
  Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DetailsPage(
                              game: list[index],
                            ))),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(list[index].bgImg),
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: list.length),
    );
  }
}
