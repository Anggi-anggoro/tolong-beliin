
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed

  });
  final String text;
  final double width;
  final double height;
  final Function? onPressed;


  @override
  Widget build(BuildContext context) {

    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(width,height),
          backgroundColor: const Color(0xFF008037),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      onPressed: () {onPressed;},
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,

        ),
      ),
    );
  }

}