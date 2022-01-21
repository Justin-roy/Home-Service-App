import 'package:flutter/material.dart';

import '../contraints.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.txt}) : super(key: key);
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          txt.toUpperCase(),
          style:
              CustomTextStyle(Colors.white, 22, FontWeight.normal).cTextStyle(),
        ),
      ),
    );
  }
}
