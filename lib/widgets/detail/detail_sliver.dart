import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_ui/constants/colors.dart';
import 'package:game_ui/model/game.dart';

class DetailSliver extends SliverPersistentHeaderDelegate {
  final Game game;
  final double expandedHeight;
  final double rounded;
  DetailSliver({
    required this.game,
    required this.expandedHeight,
    required this.rounded,
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Image.asset(
          game.bgImg,
          width: MediaQuery.of(context).size.width,
          height: expandedHeight,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.5),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight - rounded - shrinkOffset,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: rounded,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              width: 60,
              height: 5,
              color: kPrimary,
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
