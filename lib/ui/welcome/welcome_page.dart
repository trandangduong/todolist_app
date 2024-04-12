import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/ui/login_register/login_page.dart';
import 'package:todolist_app/ui/login_register/register_page.dart';

class WelcomePage extends StatelessWidget {
  final bool isFirstTimeInstallApp;
  const WelcomePage({
    super.key,
    required this.isFirstTimeInstallApp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // Back button
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: isFirstTimeInstallApp
            ? IconButton(
                onPressed: () {
                  // back to previous screen
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 18,
                  color: Colors.white,
                ),
              )
            : null,
      ),
      body: Column(
        children: [
          _buildTilte(),
          const Spacer(),
          _buildLoginButton(context),
          _buildRegisterButton(context),
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

  Widget _buildLoginButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: () {
          _gotoLoginPage(context);
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

  Widget _buildRegisterButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: ElevatedButton(
        onPressed: () {
          _gotoRegisterPage(context);
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

  void _gotoLoginPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  void _gotoRegisterPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }
}
