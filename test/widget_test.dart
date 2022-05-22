// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:epic_free/main.dart';
import 'package:epic_free/screens/game_detail_screen.dart';
import 'package:epic_free/views/game_view/game_view.dart';

void main() {
  testWidgets('Testing Home Screen and Tap on Game View', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('List of free Epic Games for the week'), findsOneWidget);
    expect(find.text('Epic Games Store gives you a free game every week. Come back often for the exclusive offers. Download a free game or join a free-to-play game community today.'), findsOneWidget);

    await tester.tap(find.byType(GameView).first);
    await tester.pump();

    expect(find.byType(GameDetailView).first, findsOneWidget);
  });
}
