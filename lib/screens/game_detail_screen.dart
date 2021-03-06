import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:epic_free/models/game/game.dart';
import 'package:epic_free/styles/palette/palette.dart';

class GameDetailView extends StatelessWidget {
  final Game game;

  List<Widget> get customAttributes {
    List<Widget> attributes = [];
    final Map<String, String?> customAttributesInfo = {
      'Publisher' : game.publisher,
      'Developer' : game.developer,
    };

    for (final key in customAttributesInfo.keys) {
      if (customAttributesInfo[key] != null) {
        final text = Text(
          '$key: ${customAttributesInfo[key]}',
          style: TextStyle(
            color: Palette.tintColor,
            fontSize: 24.0,
            fontFamily: GoogleFonts.titilliumWeb().fontFamily,
          ),
        );

        attributes.add(text);
      }
    }

    return attributes;
  }

  const GameDetailView({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 30.0,
                  color: Colors.white,
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 240,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Palette.scaffoldBackgroundColor,
                          offset: const Offset(0.0, 0.2),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Hero(
                      tag: game.keyImages.first.type,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          game.keyImages.first.url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 32.0,),
                    child: Column(
                      children: [
                        Text(
                          game.title,
                          style: TextStyle(
                            color: Palette.tintColor,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                            letterSpacing: 1.2,
                          ),
                        ),
                        const SizedBox(height: 8.0,),
                        Text(
                          game.description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Palette.secondaryColor,
                            fontSize: 18.0,
                            fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                          ),
                        ),
                        const SizedBox(height: 12.0,),
                        Text(
                          game.effectiveDateFormatted,
                          style: TextStyle(
                            color: Palette.secondaryColor,
                            fontSize: 22.0,
                            fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: customAttributes,
            ),
          ],
        ),
      ),
    );
  }
}
