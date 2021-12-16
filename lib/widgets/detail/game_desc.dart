import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game_ui/constants/colors.dart';
import 'package:game_ui/model/game.dart';
import 'package:readmore/readmore.dart';

class GameDesc extends StatelessWidget {
  final Game game;
  const GameDesc({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: ReadMoreText(
          game.desc,
          trimLines: 2,
          colorClickableText: kPrimary,
          trimMode: TrimMode.Line,
          style: TextStyle(
            color: Colors.grey.withOpacity(.7),
            height: 1.5,
          ),
          trimCollapsedText: 'more',
          trimExpandedText: 'less',
        ));
  }
}
