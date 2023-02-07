import 'package:flutter/material.dart';
import 'dice_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: const Color(0xFFD2A00C),
          title: const Text("Dicee"),
        ),
        body: const Center(
          child: DiceWidget(),
        ),
      ),
    );
  }
}
