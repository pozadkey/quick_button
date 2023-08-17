import 'package:flutter/material.dart';

import 'package:quick_button/quick_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quick Button'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              QuickButton(
                labelText: 'Submit',
                labelColor: Colors.purple,
                labelSize: 13.0,
                labelWeight: FontWeight.bold,
                labelSpacing: 0.3,
                borderColor: Colors.purple,
                borderSize: 1.5,
                backgroundColor: Colors.transparent,
                hoverIn: Colors.white,
                hoverOut: Colors.purple,
                backgroundHoverIn: Colors.purple,
                backgroundHoverOut: Colors.transparent,
                onPressed: () {
                  // Action to perform when the button is pressed
                },
              ),
              const SizedBox(
                height: 15,
              ),
              QuickButton.icon(
                icon: Icons.star,
                labelColor: Colors.purple,
                buttonHeight: 30.0,
                buttonWidth: 30.0,
                borderColor: Colors.purple,
                borderSize: 1.5,
                backgroundColor: Colors.transparent,
                hoverIn: Colors.white,
                hoverOut: Colors.purple,
                backgroundHoverIn: Colors.purple,
                backgroundHoverOut: Colors.transparent,
                onPressed: () {
                  // Action to perform when the button is pressed
                },
              ),
              const SizedBox(
                height: 15,
              ),
              QuickButton.prefixIcon(
                labelText: 'Quick Button',
                labelColor: Colors.white,
                prefixIcon: Icons.play_arrow,
                borderRadius: 25.0,
                borderColor: Colors.transparent,
                borderSize: 1.5,
                labelWeight: FontWeight.w700,
                backgroundColor: Colors.purple,
                hoverIn: Colors.purple[800],
                hoverOut: Colors.white,
                backgroundHoverIn: const Color.fromARGB(162, 155, 39, 176),
                backgroundHoverOut: Colors.purple,
                onPressed: () {
                  // Action to perform when the button is pressed
                },
              ),
              const SizedBox(
                height: 15,
              ),
              QuickButton.suffixIcon(
                labelText: 'End',
                labelColor: Colors.purple,
                suffixIcon: Icons.stop,
                borderRadius: 5.0,
                borderColor: Colors.purple,
                borderSize: 1.5,
                backgroundColor: Colors.transparent,
                hoverIn: Colors.white,
                hoverOut: Colors.purple,
                backgroundHoverIn: Colors.purple,
                backgroundHoverOut: Colors.transparent,
                onPressed: () {
                  // Action to perform when the button is pressed
                },
              ),
              const SizedBox(
                height: 15,
              ),
              QuickButton.icon(
                icon: Icons.book,
                labelColor: Colors.white,
                buttonHeight: 30.0,
                buttonWidth: 30.0,
                borderRadius: 25.0,
                borderColor: Colors.purple,
                borderSize: 1.5,
                backgroundColor: Colors.purple,
                hoverIn: Colors.purple,
                hoverOut: Colors.white,
                backgroundHoverIn: Colors.white,
                backgroundHoverOut: Colors.purple,
                onPressed: () {
                  // Action to perform when the button is pressed
                },
              ),
              const SizedBox(
                height: 15,
              ),
              QuickButton(
                labelText: 'Link',
                labelColor: Colors.purple,
                hoverIn: Colors.black,
                hoverOut: Colors.purple,
                backgroundColor: Colors.white,
                onPressed: () {
                  // Action to perform when the button is pressed
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
