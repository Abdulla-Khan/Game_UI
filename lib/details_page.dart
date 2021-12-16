import 'package:flutter/material.dart';
import 'package:game_ui/model/game.dart';
import 'package:game_ui/widgets/detail/detail_sliver.dart';
import 'package:game_ui/widgets/detail/game_info.dart';

class DetailsPage extends StatelessWidget {
  final Game game;
  const DetailsPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate:
                  DetailSliver(game: game, expandedHeight: 360, rounded: 30)),
          SliverToBoxAdapter(
            child: GameInfo(game: game),
          )
        ],
      ),
    );
  }
}
