import 'package:flutter/material.dart';
import 'package:petcare/core/constants/color.dart';

class CustomTextfield extends StatelessWidget {
  final String hint;
  final Function(String?)? onsave;
  final Widget suffixIcon;
  final double radius;
  final Color fill;
  const CustomTextfield(
      {super.key,
      required this.hint,
      required this.onsave,
      required this.suffixIcon,
      this.radius = 40,
      this.fill = const Color(0xffE5E5E5)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        onSaved: onsave,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            filled: true,
            fillColor: fill,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.primaryColor),
                borderRadius: BorderRadius.circular(radius)),
            hintText: hint,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(radius)),
            suffixIcon: suffixIcon),
      ),
    );
  }
}
