import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int index = 0;

  List<Step> steps = [
    Step(title: Text("data1"), content: Text("data for step one")),
    Step(title: Text("data2"), content: Text("data for step 2")),
    Step(title: Text("data3"), content: Text("data for step 3")),
  ];
  @override
  Widget build(BuildContext context) {
    return Stepper(
      // type: StepperType.horizontal,
      steps: steps,
      currentStep: index,
      onStepContinue: () {
        if (index >= 2) {
          return;
        }
        setState(() {
          index++;
        });
      },
      onStepCancel: () {
        if (index <= 0) {
          return;
        }
        setState(() {
          index--;
        });
      },
    );
  }
}
