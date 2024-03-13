import 'package:algoeduc/models/cores.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final bool passWord;
  const MyTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
    required this.passWord,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: MyColors.azulClaro,
      keyboardType: keyboardType,
      obscureText: passWord,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: MyColors.azulClaro),
        ),
        labelText: labelText,
        floatingLabelStyle: const TextStyle(
          color: MyColors.azulClaro,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: MyColors.azulClaro,
          fontSize: 15.0,
          fontWeight: FontWeight.w100,
          fontFamily: 'Poppins',
        ),
      ),
      // controller: _userEmailController,
    );
  }
}
