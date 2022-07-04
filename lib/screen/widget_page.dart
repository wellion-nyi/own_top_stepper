import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset('assets/images/widget1.png'),
                      ),
                      Positioned(
                        left: 40.0,
                        top: 150.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              '\'Everything is Widget\'',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0),
                            ),
                            
                          ],
                        ),
                      ),
                     
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
