import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todolist_app/ui/onboarding/ob_page_view.dart';
import 'package:todolist_app/ui/welcome/welcome_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> _checkAppState(BuildContext context) async {
    final isCompleted = await _isOnboardingCompleted();
    if (isCompleted) {
      if (!context.mounted) {
        return;
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomePage(
            isFirstTimeInstallApp: false,
          ),
        ),
      );
    } else {
      if (!context.mounted) {
        return;
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingPageView(),
        ),
      );
    }
  }

  Future<bool> _isOnboardingCompleted() async {
    try {
      final SharedPreferences preferences =
          await SharedPreferences.getInstance();
      final result = preferences.getBool("_isOnboardingCompleted");
      return result ?? false; // if preferences = null return false
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    _checkAppState(context);
    return Scaffold(
      // safe area vung chua cac cam bien va camera,..
      backgroundColor: Colors.black,
      body: SafeArea(
        child: _buildBodyPage(),
      ),
    );
  }

  Widget _buildBodyPage() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIconSplash(),
          _buildTextSplash(),
        ],
      ),
    );
  }

  Widget _buildIconSplash() {
    return Image.asset(
      "assets/images/splash.png",
      width: 85,
      height: 90,
      fit: BoxFit.contain,
    );
  }

  Widget _buildTextSplash() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Text(
        "Up to do",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
