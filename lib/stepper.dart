import 'package:flutter/material.dart';
import 'package:owntop/screen/animation_page.dart';
import 'package:owntop/screen/business_page.dart';
import 'package:owntop/screen/widget_page.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentStep = 0;

  Widget controllBuilder(
      BuildContext context, ControlsDetails controlsDetails) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          //This is Go Page
          if (_currentStep == 0)
            ElevatedButton(
                onPressed: controlsDetails.onStepContinue,
                child: const Text(
                  'Go Widget Page',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ))
          else if (_currentStep == 1)
            ElevatedButton(
                onPressed: controlsDetails.onStepContinue,
                child: const Text(
                  'Go Animation Page',
                   style: TextStyle(
                    color: Colors.white
                  ),
                  ))
          else if (_currentStep == 2)
            ElevatedButton(
                onPressed: controlsDetails.onStepContinue,
                child: const Text(
                  'Go Business Page',
                   style: TextStyle(
                    color: Colors.white
                  ),
                  )),

          //This is For Back
          if (_currentStep >= 0)
            TextButton(
                onPressed: controlsDetails.onStepCancel,
                child: const Text(
                  'Back',
                ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Image.asset('assets/images/Ch2He9sq8.png'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Learn Flutter any way you want',
              style: TextStyle(
                  color: Color(0xFF424242),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Stepper(
              controlsBuilder: controllBuilder,
              steps: const [
                Step(
                  title: Text(
                    'Widget',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  content: Text(
                    'Everything Is Widget',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Step(
                  title: Text(
                    'Animation',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  content: Text(
                    'Bring animations to your app',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Step(
                  title: Text(
                    'Business',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  content: Text(
                    'Building a Flutter business',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
              onStepTapped: (int index) {
                setState(() {
                  _currentStep = index;
                });
              },
              currentStep: _currentStep,
              onStepContinue: () {
                if (_currentStep == 0) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const WidgetPage()),
                  );
                } else if (_currentStep == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimationPage()),
                  );
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const BusinessPage()),
                  );
                }
              },
              onStepCancel: () {
                if (_currentStep != 0) {
                  setState(() {
                    _currentStep -= 1;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
