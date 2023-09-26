import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxicity_app/components/buttons.dart';
import 'package:taxicity_app/screens/login_screen.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            SafeArea(
              child: Text('Taxity',
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),),
            ),
            SizedBox(height: 250,),
            Text('Greetings\nExplore your way out\nwith us.',
            style: GoogleFonts.poppins(
              fontSize: 22,fontWeight: FontWeight.w700,
              ),),
            SizedBox(height: 200,),
            MyButton(myButtonText: 'Continue logging in', 
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginScreen()));
            }, 
            myButtonColor: const Color.fromARGB(255, 115, 255, 187),),
            SizedBox(height: 8,),
            Center(child: Text('Don\'t have an account? Sign Up',
            style: GoogleFonts.poppins(
              fontSize: 14,
            ),),),
          ],
        ),
      ),
    );
  }
}