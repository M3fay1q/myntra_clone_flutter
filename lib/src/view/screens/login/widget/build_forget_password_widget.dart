import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildForgetPasswordWidget extends StatelessWidget {
  const BuildForgetPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: (() {}),
        // padding: EdgeInsets.only(right: 0),
        child: Text(
          'Forget Password?',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
