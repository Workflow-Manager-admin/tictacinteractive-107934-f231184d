import 'package:flutter/material.dart';
import 'game_board.dart';
import 'game_logic.dart';

// PUBLIC_INTERFACE
void main() {
  /// Entry point for the Tic-Tac-Toe game app.
  runApp(const TicTacToeApp());
}

// PUBLIC_INTERFACE
class TicTacToeApp extends StatelessWidget {
  /// Root widget for the Tic-Tac-Toe game.
  const TicTacToeApp({super.key});

  // Color palette based on provided colors.
  static const Color primaryColor = Color(0xFF2196F3);
  static const Color secondaryColor = Color(0xFF06c2d0);
  static const Color accentColor = Color(0xFF97a6e2);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black87,
      error: Colors.redAccent,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(primaryColor),
        textStyle: WidgetStatePropertyAll(
          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
      ),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic-Tac-Toe',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const TicTacToeScaffold(),
    );
  }
}

// PUBLIC_INTERFACE
class TicTacToeScaffold extends StatelessWidget {
  /// Core UI scaffold for the Tic-Tac-Toe game.
  const TicTacToeScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Game status, board, and restart button scaffolded around modular GameBoard
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 340,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Game status
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Text(
                  "Player X's turn",
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
              // Game board (now modular)
              const GameBoard(),
              // Restart button
              Padding(
                padding: const EdgeInsets.only(top: 36.0),
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement restart logic
                  },
                  child: const Text('Restart'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
