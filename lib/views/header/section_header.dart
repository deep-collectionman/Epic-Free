import 'package:epic_free/styles/palette/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: GoogleFonts.titilliumWeb().fontFamily,
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          color: Palette.tintColor,
        ),
      ),
    );
  }
}
