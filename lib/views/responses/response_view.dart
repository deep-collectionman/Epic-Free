import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:epic_free/styles/palette/palette.dart';

class ResponseView extends StatelessWidget {
  final IconData iconData;
  final String text;

  const ResponseView({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 64.0,
        horizontal: 24.0,
      ),
      height: 400,
      child: Center(
        child: Column(
          children: [
            Icon(
              iconData,
              size: 60,
              color: Palette.tintColor,
            ),
            const SizedBox(height: 12.0,),
            Text(
              text,
              style: TextStyle(
                fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                fontSize: 24.0,
                color: Palette.tintColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        )
      ),
    );
  }
}
