import 'package:flutter/material.dart';

String initial = '0';
String result = 'Result';
String operator = '';


class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    List calcItem = [
      buildCalcItem(
        text: 'C',
        isCircle: true,
      ),
      buildCalcItem(
        text: 'X',
        isCircle: true,
      ),
      buildCalcItem(
        text: '%',
        isCircle: true,
      ),
      buildCalcItem(
        text: '/',
        isCircle: true,
      ),
      buildCalcItem(
        text: '7',
      ),
      buildCalcItem(
        text: '8',
      ),
      buildCalcItem(
        text: '9',
      ),
      buildCalcItem(
        text: '*',
        isCircle: true,
      ),
      buildCalcItem(
        text: '4',
      ),
      buildCalcItem(
        text: '5',
      ),
      buildCalcItem(
        text: '6',
      ),
      buildCalcItem(
        text: '-',
        isCircle: true,
      ),
      buildCalcItem(
        text: '3',
      ),
      buildCalcItem(
        text: '2',
      ),
      buildCalcItem(
        text: '1',
      ),
      buildCalcItem(
        text: '+',
        isCircle: true,
      ),
      buildCalcItem(
        text: '0',
      ),
      buildCalcItem(
        text: '.',
      ),
      buildCalcLastItem(),
    ];
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.cyan, Colors.green]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            children: [
              const Text(
                'Attractive Design',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.black,
                    ),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              initial,
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              result,
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: GridView.builder(
                                  itemCount: calcItem.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          mainAxisSpacing: 5,
                                          crossAxisSpacing: 5),
                                  itemBuilder: ((context, index) {
                                    return calcItem[index];
                                  })),
                            )
                          ]),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  changeResult(text) {
    num num1 = 0;
    num num2 = 0;

    setState(() {
      if (text == 'X') {
        if (initial.length == 1) {
          initial = '0';
        } else {
          initial = initial.substring(0, initial.length - 1);
        }
      } else if (text == 'C') {
        initial = '0';
        result = '0';
      } else if (text == '=') {
        if (initial.contains(operator)) {
          final splitted = initial.split(operator);

          if (splitted.any((element) => element.isEmpty)) return;

          num1 = int.parse(splitted.first);
          num2 = int.parse(splitted.last);

          // num1 = int.parse(initial.substring(0, initial.indexOf(operator)));

          // if (initial.indexOf(operator) == initial.length - 1) return;
          // num2 = int.parse(
          //     initial.substring(initial.indexOf(operator) + 1, initial.length));

          switch (operator) {
            case '+':
              setState(() {
                result = (num1 + num2).toString();
              });
              break;
            case '-':
              setState(() {
                result = (num1 - num2).toString();
              });
              break;
            case '*':
              setState(() {
                result = (num1 * num2).toString();
              });
              break;
            case '/':
              setState(() {
                result = (num1 / num2).toString();
              });
              break;
            case '%':
              setState(() {
                result = (num1 * num2 / 100).toString();
              });
          }
        }
      } else if (text == '+' ||
          text == '-' ||
          text == '*' ||
          text == '/' ||
          text == '%') {
        operator = text;
        initial = initial + text;
      } else {
        if (initial == '0') {
          initial = text;
        } else {
          initial = initial + text;
        }
      }
    });
  }

  Widget buildCalcItem({text, isCircle = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            backgroundColor: isCircle
                ? const Color.fromARGB(255, 248, 241, 241)
                : Colors.white,
            shape: const CircleBorder()),
        onPressed: () {
          changeResult(text);
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(text,
              style: const TextStyle(fontSize: 25, color: Colors.black)),
        ),
      ),
    );
  }

  Widget buildCalcLastItem() {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: const LinearGradient(
            colors: [Colors.cyan, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.centerRight),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: const Color.fromARGB(0, 249, 247, 247),
            elevation: 0,
          ),
          onPressed: () {
            changeResult('=');
          },
          child: const Text(
            '=',
            style: TextStyle(fontSize: 25),
          )),
    );
  }
}
