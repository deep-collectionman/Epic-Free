
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:epic_free/screens/home_screen.dart';
import 'package:epic_free/styles/palette/palette.dart';

void main() async {
  await dotenv.load();
  runApp(const App(),);
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Epic Free',
      theme: ThemeData(
        primaryColor: Palette.tintColor,
        colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Palette.secondaryColor),
        scaffoldBackgroundColor: Palette.scaffoldBackgroundColor,
      ),
      home: const HomeScreen(isDummy: true,),
    );
  }
}
