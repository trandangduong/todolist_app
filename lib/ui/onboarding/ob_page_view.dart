import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todolist_app/enums/ob_page_position.dart';
import 'package:todolist_app/ui/onboarding/ob_child_page.dart';
import 'package:todolist_app/ui/welcome/welcome_page.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        // physics: NeverScrollableScrollPhysics(),
        children: [
          OnboardingChidPage(
            obPagePosition: ObPagePosition.page1,
            nextOnPressed: () {
              _pageController.jumpToPage(1);
            },
            backOnPressed: () {
              // nothing
            },
            skipOnPressed: () {
              _markOnboardingCompleted();
              _gotoWelcomePage();
            },
          ),
          OnboardingChidPage(
            obPagePosition: ObPagePosition.page2,
            nextOnPressed: () {
              _pageController.jumpToPage(2);
            },
            backOnPressed: () {
              _pageController.jumpToPage(0);
            },
            skipOnPressed: () {
              _markOnboardingCompleted();
              _gotoWelcomePage();
            },
          ),
          OnboardingChidPage(
            obPagePosition: ObPagePosition.page3,
            nextOnPressed: () {
              _markOnboardingCompleted();
              _gotoWelcomePage();
            },
            backOnPressed: () {
              _pageController.jumpToPage(1);
            },
            skipOnPressed: () {
              _markOnboardingCompleted();
              _gotoWelcomePage();
            },
          ),
        ],
      ),
    );
  }

  void _gotoWelcomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const WelcomePage(isFirstTimeInstallApp: true),
      ),
    );
  }

  Future<void> _markOnboardingCompleted() async {
    try {
      final SharedPreferences preferences =
          await SharedPreferences.getInstance();
      preferences.setBool("_isOnboardingCompleted", true);
    } catch (e) {
      print(e);
      return;
    }
  }
}
