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
              // Transparent RoundedRectangular Button with prefixIcon
              QuickButton(
                labelText: 'Quick Button',
                labelColor: Colors.purple,
                labelSize: 13.0,
                labelWeight: FontWeight.bold,
                labelSpacing: 0.3,
                prefixIcon: Icons.add_task,
                iconSize: 20.0,
                buttonSize: 200.0,
                borderRadius: 25.0,
                borderColor: Colors.purple,
                borderSize: 1.5,
                backgroundColor: Colors.transparent,
                labelHoverIn: Colors.white,
                labelHoverOut: Colors.purple,
                backgroundHoverIn: Colors.purple,
                backgroundHoverOut: Colors.transparent,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              // Transparent Rectangular Button with prefixIcon
              QuickButton(
                labelText: 'Quick Button',
                labelColor: Colors.purple,
                labelSize: 13.0,
                labelWeight: FontWeight.bold,
                labelSpacing: 0.3,
                prefixIcon: Icons.backpack,
                iconSize: 20.0,
                buttonSize: 200.0,
                borderColor: Colors.purple,
                borderSize: 1.5,
                backgroundColor: Colors.transparent,
                labelHoverIn: Colors.white,
                labelHoverOut: Colors.purple,
                backgroundHoverIn: Colors.purple,
                backgroundHoverOut: Colors.transparent,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              // Transparent CurvedEdged Button with suffixIcon
              QuickButton(
                labelText: 'Quick Button',
                labelColor: Colors.purple,
                labelSize: 13.0,
                labelWeight: FontWeight.bold,
                labelSpacing: 0.3,
                suffixIcon: Icons.dark_mode,
                iconSize: 20.0,
                buttonSize: 200.0,
                borderColor: Colors.purple,
                borderSize: 1.5,
                borderRadius: 8.0,
                backgroundColor: Colors.transparent,
                labelHoverIn: Colors.white,
                labelHoverOut: Colors.purple,
                backgroundHoverIn: Colors.purple,
                backgroundHoverOut: Colors.transparent,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              // Solid Rectangular Button with prefixIcon
              QuickButton(
                labelText: 'Quick Button',
                labelColor: Colors.white,
                labelSize: 13.0,
                labelWeight: FontWeight.bold,
                labelSpacing: 0.3,
                prefixIcon: Icons.backpack,
                iconSize: 20.0,
                buttonSize: 200.0,
                backgroundColor: Colors.purple,
                labelHoverIn: const Color.fromARGB(255, 63, 63, 63),
                labelHoverOut: Colors.white,
                backgroundHoverIn: const Color.fromARGB(112, 226, 33, 243),
                backgroundHoverOut: Colors.purple,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              // Solid RoundedRectangular Button
              QuickButton(
                labelText: 'Quick Button',
                labelColor: Colors.white,
                labelSize: 13.0,
                labelWeight: FontWeight.bold,
                labelSpacing: 0.3,
                borderRadius: 25.0,
                buttonSize: 200.0,
                backgroundColor: Colors.purple,
                labelHoverIn: const Color.fromARGB(255, 63, 63, 63),
                labelHoverOut: Colors.white,
                backgroundHoverIn: const Color.fromARGB(112, 226, 33, 243),
                backgroundHoverOut: Colors.purple,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              // Transparent CurvedEdged Button
              QuickButton(
                labelText: 'Quick Button',
                labelColor: Colors.white,
                labelSize: 13.0,
                labelWeight: FontWeight.bold,
                labelSpacing: 0.3,
                borderRadius: 8.0,
                buttonSize: 200.0,
                backgroundColor: Colors.purple,
                labelHoverIn: const Color.fromARGB(255, 63, 63, 63),
                labelHoverOut: Colors.white,
                backgroundHoverIn: const Color.fromARGB(112, 226, 33, 243),
                backgroundHoverOut: Colors.purple,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
