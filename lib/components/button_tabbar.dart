import 'package:flutter/material.dart';

class ButtonTabbar extends StatelessWidget {
  const ButtonTabbar(
      {super.key,
      required this.name,
      required this.bcolor,
      required this.fcolor});

  final String name;
  final Color bcolor;
  final Color fcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: bcolor,
          foregroundColor: fcolor,
          overlayColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 5,
          ),
          minimumSize: const Size(0, 32),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
