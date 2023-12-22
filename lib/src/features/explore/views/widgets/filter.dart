import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filter extends StatelessWidget {
  const Filter(
      {super.key, required this.name, this.onTap, required this.isActive});

  final String name;
  final VoidCallback? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFFFFBD59) : Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          name,
          style: GoogleFonts.poppins(
            color: isActive ? Colors.black : Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
