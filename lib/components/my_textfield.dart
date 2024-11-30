import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyTextfield extends StatefulWidget {
  const MyTextfield({super.key});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  var controllerTextField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerTextField,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      cursorHeight: 20,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.15),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SvgPicture.asset(
            "assets/svg/searchnormal1.svg",
            height: 25,
            colorFilter: ColorFilter.mode(
              Colors.grey[600]!,
              BlendMode.srcIn,
            ),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        hintText: "Search",
        hintStyle: TextStyle(
          color: Colors.grey[700],
          fontSize: 16,
        ),
      ),
    );
  }
}
