import 'package:flutter/material.dart';
import 'package:responsive_dashborad/features/views/dash_board_view.dart';

void main() {
  runApp(const ResponSiveDashBoard());
}

class ResponSiveDashBoard extends StatelessWidget {
  const ResponSiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
