import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({super.key});

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Stepper(
            currentStep: _index,
            onStepCancel: () {
              if (_index > 0) {
                setState(() {
                  _index -= 1;
                });
              }
            },
            onStepContinue: () {
              if (_index <= 0) {
                setState(() {
                  _index += 1;
                });
              }
            },
            onStepTapped: (int index) {
              setState(() {
                _index = index;
              });
            },
            steps: <Step>[
              Step(
                title: const Text('Account'),
                content: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your Account Number',
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      )),
                ),
              ),
              const Step(
                title: Text('Adress'),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Account Address',
                    hintStyle: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              Step(
                title: Text('Mobile Number'),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Mobile Number',
                    hintStyle: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        onPressed: () {},
        child: Center(
          // child: GestureDetector(onTap: () {
          //   Navigator.of(context).pushNamed('/pr');
          //   print('radhe');
          // },
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

int _index = 0;