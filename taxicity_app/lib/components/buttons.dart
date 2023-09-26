import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget{
  final String myButtonText;
  final Function()? onTap;
  final Color myButtonColor;
  const MyButton({super.key, 
  required this.myButtonText, 
  required this.onTap, 
  required this.myButtonColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                height: 50,
                child: Center(
                  child: Text(myButtonText,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: myButtonColor ,
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