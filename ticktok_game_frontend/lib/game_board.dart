import 'package:flutter/material.dart';

/// The GameBoard widget renders a 3x3 empty board grid for Tic-Tac-Toe.
/// It exposes [cellSize] for flexible sizing.
/// Actual tap handling and symbol display can be extended from here.
class GameBoard extends StatelessWidget {
  final double cellSize;

  const GameBoard({Key? key, this.cellSize = 80.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: List<TableRow>.generate(
        3,
        (row) => TableRow(
          children: List<Widget>.generate(
            3,
            (col) => Container(
              height: cellSize,
              width: cellSize,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: row == 0 ? Colors.transparent : Colors.grey.shade300,
                    width: 1.5,
                  ),
                  left: BorderSide(
                    color: col == 0 ? Colors.transparent : Colors.grey.shade300,
                    width: 1.5,
                  ),
                  right: BorderSide(
                    color: col == 2 ? Colors.transparent : Colors.grey.shade300,
                    width: 1.5,
                  ),
                  bottom: BorderSide(
                    color: row == 2 ? Colors.transparent : Colors.grey.shade300,
                    width: 1.5,
                  ),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                '',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
