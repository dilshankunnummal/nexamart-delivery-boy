import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {

  final String text;
  final double fontSize;
  final maxLine;
  final textOverFlow;
  final weight;
  const CustomText({super.key, required this.text, required this.fontSize, this.maxLine, this.textOverFlow, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: weight
      ),
      maxLines: maxLine,
      overflow: textOverFlow,

    );
  }
}
