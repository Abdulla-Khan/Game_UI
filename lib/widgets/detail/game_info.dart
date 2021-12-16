import 'package:flutter/material.dart';
import 'package:game_ui/model/game.dart';
import 'package:game_ui/widgets/detail/game_desc.dart';
import 'package:game_ui/widgets/detail/game_gallery.dart';
import 'package:game_ui/widgets/detail/game_review.dart';

import 'game_header.dart';

class GameInfo extends StatelessWidget {
  final Game game;
  const GameInfo({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        GameHeader(game: game),
        GameGallery(game: game),
        GameDesc(game: game),
        GameReview(game: game)
      ]),
    );
  }
}
