import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dish extends StatelessWidget {
  const Dish({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: const BoxDecoration(color: Color(0x0F8F8E8E)),
        child: Row(
          children: [
            Image.asset(
              'assets/images/food.png',
              fit: BoxFit.cover,
              width: 80,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // dish name
                Text(
                  'Paneer Masala',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                // location
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 20,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Smoker\'s corner, Ravet',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                // likes and dislikes
                Row(
                  children: [
                    const Icon(
                      Icons.thumb_up,
                      size: 15,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '534',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.thumb_down,
                      size: 15,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '534',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),

            // dish price
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFBD59),
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                '₹ 100',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
