import 'package:flutter/material.dart';

import '../../models/game/game.dart';
import '../game_view/game_view.dart';
import '../header/section_header.dart';

class Carousel extends StatelessWidget {
  final String sectionTitle;
  final List<Game> games;

  const Carousel({
    super.key,
    required this.sectionTitle,
    required this.games,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: sectionTitle,),
        SizedBox(
          height: 465.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: games.length,
            itemBuilder: (context, index) => GameView(game: games[index],),
          ),
        ),
      ],
    );
  }
}
