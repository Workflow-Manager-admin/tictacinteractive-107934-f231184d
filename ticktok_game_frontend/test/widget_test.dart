import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ticktok_game_frontend/main.dart';

void main() {
  testWidgets('App should build and display UI scaffold', (WidgetTester tester) async {
    // Build the TicTacToeApp and trigger a frame.
    await tester.pumpWidget(const TicTacToeApp());

    // Check for the presence of the game status text.
    expect(find.text("Player X's turn"), findsOneWidget);

    // Check for a Restart button.
    expect(find.text('Restart'), findsOneWidget);

    // Check if the 3x3 grid widget exists by Table.
    expect(find.byType(Table), findsOneWidget);
  });
}
