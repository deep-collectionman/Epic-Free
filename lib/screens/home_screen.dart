import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:epic_free/api_service/api_service.dart';
import 'package:epic_free/models/response/api_response.dart';
import 'package:epic_free/views/responses/response_view.dart';
import 'package:epic_free/views/carousel/carousel.dart';
import 'package:epic_free/styles/palette/palette.dart';

class HomeScreen extends StatelessWidget {
  final bool isDummy;
  Service get service => isDummy ? DummyFreeEpicGamesService() : FreeEpicGamesService();

  const HomeScreen({
    super.key,
    this.isDummy = false,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 24.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  'List of free Epic Games for the week',
                  style: TextStyle(
                    fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Palette.tintColor,
                  ),
                ),
              ),
              const SizedBox(height: 8.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  'Epic Games Store gives you a free game every week. Come back often for the exclusive offers. Download a free game or join a free-to-play game community today.',
                  style: TextStyle(
                    fontFamily: GoogleFonts.titilliumWeb().fontFamily,
                    fontSize: 24.0,
                    color: Palette.secondaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 40.0,),
              FutureBuilder(
                future: service.getFreeGames(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done && snapshot.error == null) {
                    final APIResponse result = snapshot.data;
                    final isEmpty = result.freeGames.current.isEmpty;

                    return isEmpty ? const ResponseView(
                      iconData: FontAwesomeIcons.faceSadCry,
                      text: 'It seems that the store is empty now... Try again later.',
                    ) : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Carousel(
                          sectionTitle: 'Current Free Games',
                          games: result.freeGames.current,
                        ),
                        Carousel(
                          sectionTitle: 'Upcoming Free Games',
                          games: result.freeGames.upcoming,
                        ),
                      ],
                    );
                  }

                  if (snapshot.hasError) {
                    return const ResponseView(
                      iconData: FontAwesomeIcons.server,
                      text: 'Sorry... We couldn\'t get the info from the service. Come back later.',
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(color: Palette.tintColor,),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}