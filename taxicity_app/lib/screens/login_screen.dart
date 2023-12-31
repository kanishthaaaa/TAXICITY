import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxicity_app/components/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            SafeArea(
              child: Text(
                'Taxity',
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Text(
              'Enter your login\ncredentials',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'phone, e-mail address or username'),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'password'),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              myButtonText: 'Continue',
              onTap: () {},
              myButtonColor: const Color.fromARGB(255, 115, 255, 187),
            ),
            SizedBox(height: 12,),
            Center(
              child: Text('Forgotten your login details? Get help with logging in.',
              style: GoogleFonts.poppins(
                fontSize: 12,
              ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('OR',style: GoogleFonts.poppins(
                fontSize: 13,
              ),),
            ),
            SizedBox(height: 15,),
            MyButton(myButtonText: 'Continue with socials', onTap: (){}, myButtonColor: Color.fromARGB(255, 250, 223, 91))
          ],
        ),
      ),
    );
  }
}
