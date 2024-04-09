import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
    // required this.loginOnPressed,
    // required this.registerOnPressed,
  });
  // final VoidCallback loginOnPressed;
  // final VoidCallback registerOnPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            // back to previous screen
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          _buildTilte(),
          const Spacer(),
          _buildLoginButton(),
          _buildRegisterButton(),
        ],
      ),
    );
  }

  Widget _buildTilte() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ).copyWith(top: 40),
      child: Column(
        children: [
          Text(
            'Welcome to Todolist_app',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white.withOpacity(0.87),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Please login to your account or create new account to continue',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white.withOpacity(0.67),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: () {
          // loginOnPressed();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(136, 117, 255, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )),
        child: Text(
          'LOGIN',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.lato().fontFamily,
            color: Colors.white.withOpacity(0.87),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: ElevatedButton(
        onPressed: () {
          // registerOnPressed();
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          side: const BorderSide(
            width: 1,
            color: Color.fromRGBO(136, 117, 255, 1),
          ),
        ),
        child: Text(
          'CREATE ACCOUNT',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.lato().fontFamily,
            color: Colors.white.withOpacity(0.87),
          ),
        ),
      ),
    );
  }
}
