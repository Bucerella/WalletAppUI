import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String btnText;

  const MyButton({
    Key? key,
    required this.iconPath,
    required this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Icon
        Container(
          height: 45,
          padding: const EdgeInsets.all(5.0,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 40,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        //Text
        Text(
          btnText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}
