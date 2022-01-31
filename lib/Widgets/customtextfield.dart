import 'package:flutter/material.dart';
import 'package:practice/custom_theme.dart';

class CustomTextField extends StatelessWidget {
  final IconData? prefixIcon;
  final String title;
  final String hinter;

  const CustomTextField(
      {Key? key, required this.hinter, required this.title, this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController newController = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: CustomTheme.commonPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 15,
                color: CustomTheme.LightGrey,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            style: TextStyle(
              fontSize: 14,
            ),
            decoration: InputDecoration(
              prefixIcon: prefixIcon != null
                  ? Icon(
                      prefixIcon,
                      color: CustomTheme.LightGrey.withOpacity(0.4),
                    )
                  : null,
              hintText: hinter,
              hintStyle:
                  TextStyle(color: CustomTheme.LightGrey.withOpacity(0.5)),
            ),
            controller: newController,
          )
        ],
      ),
    );
  }
}
