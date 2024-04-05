import 'package:flutter/material.dart';
import 'package:todolist_app/ui/enums/ob_page_position.dart';
import 'ob_child_page.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          OnboardingChidPage(
            obPagePosition: ObPagePosition.page1,
          ),
          OnboardingChidPage(
            obPagePosition: ObPagePosition.page2,
          ),
          OnboardingChidPage(
            obPagePosition: ObPagePosition.page3,
          ),
        ],
      ),
    );
  }
}
