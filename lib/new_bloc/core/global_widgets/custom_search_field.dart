import 'package:flutter/material.dart';
import 'package:project/utilities/helpers/globaldata.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final void Function()? prefix;
  final void Function()? suffix;
  final int? maxLines;
  final Function(String)? onChanged;

  const CustomSearchField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.prefix,
    this.suffix,
    this.onChanged,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: obscureText,
      onChanged: onChanged,
      cursorColor: Colors.black,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        fillColor: greenColor,
        prefixIcon: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: prefix,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: suffix,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}
