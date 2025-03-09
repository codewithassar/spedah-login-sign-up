import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Full-width button
      height: 50,
      child: CupertinoButton(
        color: color,
        borderRadius: BorderRadius.circular(30),
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.sora(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
