import 'package:epic_free/screens/game_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:epic_free/styles/palette/palette.dart';
import '../../models/game/game.dart';

class GameView extends StatelessWidget {
  final Game game;

  const GameView({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => GameDetailView(game: game,),),
      ),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 300.0,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    game.keyImages.first.url,
                    width: 300.0,
                    height: 175.0,
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Container(
              height: 270.0,
              width: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      game.title,
                      style: TextStyle(
                        color: Palette.tintColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 2.0,),
                    Text(
                      game.description,
                      style: TextStyle(
                        color: Palette.secondaryColor,
                        fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                      ),
                    ),
                    const SizedBox(height: 12.0,),
                    Text(
                      game.effectiveDateFormatted,
                      style: TextStyle(
                        color: Palette.secondaryColor,
                        fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
