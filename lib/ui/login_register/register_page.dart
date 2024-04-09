import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTilte(),
              const SizedBox(height: 50),
              _buildInputUserAndPass(),
              _buildRegisterButton(),
              _buildDivider(),
              _buildGoogleRegister(),
              _buildAppleRegister(),
              _buildLogin(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGoogleRegister() {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () {
          //
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'icon_google_register.png',
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                'Register with Google',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  color: Colors.white.withOpacity(0.87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppleRegister() {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: () {
          //
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'icon_apple_register.png',
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                'Register with Apple',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  color: Colors.white.withOpacity(0.87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return Container(
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.only(top: 70),
      child: ElevatedButton(
        onPressed: null, //disable button
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(136, 117, 255, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          disabledBackgroundColor: const Color.fromRGBO(136, 117, 255, 0.5),
        ),
        child: Text(
          'Register',
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

  Widget _buildTilte() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ).copyWith(top: 40),
      child: Text(
        'Register',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.lato().fontFamily,
          color: Colors.white.withOpacity(0.87),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildInputUserAndPass() {
    return Form(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUsernameField(),
            const SizedBox(height: 25),
            _buildPassField(),
          ],
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.lato().fontFamily,
            color: Colors.white.withOpacity(0.87),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your user name",
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: const Color(0xFF535353),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color.fromRGBO(136, 117, 255, 1),
              filled: true,
            ),
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPassField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.lato().fontFamily,
            color: Colors.white.withOpacity(0.87),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your Password",
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: const Color(0xFF535353),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color.fromRGBO(136, 117, 255, 1),
              filled: true,
            ),
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white,
            ),
            obscureText: true, //hidden text
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 50),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797).withOpacity(0.7),
            ),
          ),
          Text(
            'or',
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: const Color(0xFF979797).withOpacity(0.7),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797).withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogin(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 40, bottom: 20),
      child: RichText(
        text: TextSpan(
          text: 'Already have account?',
          style: TextStyle(
            fontSize: 12,
            fontFamily: GoogleFonts.lato().fontFamily,
            color: const Color(0xFF979797),
          ),
          children: [
            TextSpan(
              text: 'Login',
              style: TextStyle(
                fontSize: 12,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: Colors.white.withOpacity(0.87),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _gotoLoginPage(context);
                },
            ),
          ],
        ),
      ),
    );
  }

  void _gotoLoginPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }
}
