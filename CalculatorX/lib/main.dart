import 'package:calculator_x/buttons/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorX());
}

class CalculatorX extends StatefulWidget {
  const CalculatorX({Key? key}) : super(key: key);
  @override
  _CalculatorX createState() => _CalculatorX();
}

class _CalculatorX extends State<CalculatorX> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CalculatorX',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CalculatorX'),
        ),
        backgroundColor: const Color.fromARGB(255, 63, 68, 61),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: const Alignment(1, 1),
              padding: const EdgeInsets.only(right: 20),
              child: const Text(
                "1x1",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: const Alignment(1, 1),
              padding: const EdgeInsets.all(20),
              child: const Text(
                "1+1",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(
                  text: "AC",
                ),
                CalculatorButton(text: "C"),
                CalculatorButton(text: "<"),
                CalculatorButton(text: "/"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(
                  text: "7",
                ),
                CalculatorButton(text: "8"),
                CalculatorButton(text: "9"),
                CalculatorButton(text: "x"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(
                  text: "4",
                ),
                CalculatorButton(text: "5"),
                CalculatorButton(text: "6"),
                CalculatorButton(text: "+"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(
                  text: "1",
                ),
                CalculatorButton(text: "2"),
                CalculatorButton(text: "3"),
                CalculatorButton(text: "-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CalculatorButton(
                  text: "+/-",
                ),
                CalculatorButton(text: "0"),
                CalculatorButton(text: "."),
                CalculatorButton(text: "="),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
