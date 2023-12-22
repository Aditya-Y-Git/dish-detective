import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreSearchBar extends StatelessWidget {
  const ExploreSearchBar({super.key, this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: const Color(0x0F8F8E8E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              cursorHeight: 15,
              cursorWidth: 0.5,
              cursorColor: Colors.black,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.height * 0.075,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.black,
              ),
              child: const Icon(
                Icons.search,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
