import 'package:flutter/material.dart';
import 'package:todolist_app/enums/ob_page_position.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingChidPage extends StatelessWidget {
  final ObPagePosition obPagePosition;
  final VoidCallback nextOnPressed;
  final VoidCallback backOnPressed;
  final VoidCallback skipOnPressed;

  const OnboardingChidPage({
    super.key,
    required this.obPagePosition,
    required this.nextOnPressed,
    required this.backOnPressed,
    required this.skipOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildBoardingSkipButton(),
              _buildBoardingImage(),
              _buildBoardingTitle(),
              _buildBoardingPageControl(),
              _buildBoardingNextandBackButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBoardingSkipButton() {
    return Container(
      margin: const EdgeInsets.only(top: 14, left: 24),
      alignment: Alignment.topLeft,
      child: TextButton(
        onPressed: () {
          skipOnPressed();
        },
        child: Text(
          'Skip',
          style: TextStyle(
            fontSize: 16,
            fontFamily: GoogleFonts.lato().fontFamily,
            color: Colors.white.withOpacity(0.44),
          ),
        ),
      ),
    );
  }

  Widget _buildBoardingImage() {
    return Image.asset(
      obPagePosition.obPageImage(),
      height: 296,
      width: 271,
      fit: BoxFit.contain,
    );
  }

  Widget _buildBoardingPageControl() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 4,
            width: 16,
            decoration: BoxDecoration(
              color: obPagePosition == ObPagePosition.page1
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
            height: 4,
            width: 16,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: obPagePosition == ObPagePosition.page2
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
            height: 4,
            width: 16,
            decoration: BoxDecoration(
              color: obPagePosition == ObPagePosition.page3
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBoardingTitle() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 38),
      child: Column(
        children: [
          Text(
            obPagePosition.obPageTitle(),
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white.withOpacity(0.87),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 42,
          ),
          Text(
            obPagePosition.obPageContent(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white.withOpacity(0.87),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBoardingNextandBackButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 24),
      //alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  backOnPressed();
                },
                child: Text(
                  'BACK',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.white.withOpacity(0.44),
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  nextOnPressed();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(136, 117, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
                child: Text(
                  obPagePosition == ObPagePosition.page3
                      ? 'Get STARTED'
                      : 'NEXT',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
