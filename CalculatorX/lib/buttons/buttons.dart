import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final Color textColor;

  const CalculatorButton({
    super.key,
    required this.text,
    this.fillColor = Colors.green,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 75,
        height: 75,
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(textColor),
            backgroundColor: MaterialStateProperty.all<Color>(fillColor),
          ),
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}
