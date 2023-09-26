import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget{
  final String myButtonText;
  final Function()? onTap;
  final Color muButtonColor;
  const MyButton({super.key, 
  required this.myButtonText, 
  required this.onTap, 
  required this.muButtonColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                height: 50,
                child: Center(
                  child: Text('Continue logging in',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:  const Color.fromARGB(255, 115, 255, 187),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                       offset: Offset(0, 4), // Offset on the y-axis to create a bottom shadow
                    blurRadius: 4,
                    ),
                  ],
                  ),
              ),
    );
  }
}