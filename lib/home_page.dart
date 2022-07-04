import 'package:flutter/material.dart';
import 'package:owntop/stepper.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
         StepperScreen(),
        ],
      )
    );
  }
}