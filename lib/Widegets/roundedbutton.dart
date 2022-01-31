import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icond;
  final Function()? onPress;
  final Color bgColor;
  final Color colord;
  const RoundedButton(
      {Key? key,
      required this.icond,
      this.colord = Colors.white,
      this.onPress,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 50,
        height: 50,
        decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
        child: Icon(
          icond,
          color: colord,
        ),
      ),
    );
  }
}
