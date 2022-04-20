import 'package:flutter/material.dart';

class ChakraText extends StatelessWidget {
  final String data;
  final int fontSize;
  final TextStyle? style;
  const ChakraText({Key? key, required this.data, required this.fontSize, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontFamily: 'ChakraPetch',
        fontSize: 24.0,
      ),
    );
  }
}
