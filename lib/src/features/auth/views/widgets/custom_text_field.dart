import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    required this.title,
    this.hintText,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
  });

  final String title;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title of text field
        Text(
          title,
          style: GoogleFonts.dmSans(
            fontSize: 12,
          ),
        ),

        const SizedBox(height: 5),

        // text field
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: const Color(0x0F8F8E8E),
            border: Border.all(width: 0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: controller,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            cursorHeight: 15,
            cursorWidth: 0.5,
            cursorColor: Colors.black,
            keyboardType: textInputType,
            obscureText: obscureText!,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
