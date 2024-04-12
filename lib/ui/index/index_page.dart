import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List<Widget> _pageAct = [];
  int _currentPageAct = 0;

  @override
  void initState() {
    super.initState();

    _pageAct = [
      _indexPage(),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.blue,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pageAct.elementAt(_currentPageAct),
      bottomNavigationBar: _buildIndexFooter(),
      floatingActionButton: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: const Color(0xff8687e7),
          borderRadius: BorderRadius.circular(32),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _indexPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildIndexStatusBar(),
        _buildIndexHeader(),
        _buildIndexMiddle(),
        _buildIndexContent(),
      ],
    );
  }

  Widget _buildIndexStatusBar() {
    return Container();
  }

  Widget _buildIndexHeader() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Index',
              style: TextStyle(
                fontSize: 20,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: Colors.white.withOpacity(0.87),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndexMiddle() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/index_1.png',
            height: 296,
            width: 271,
            fit: BoxFit.contain,
          ),
          Text(
            'What do you want to do today?',
            style: TextStyle(
              fontSize: 20,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white.withOpacity(0.87),
            ),
          ),
          Text(
            'Tap + to add your tasks',
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white.withOpacity(0.87),
            ),
          ),
        ]);
  }

  Widget _buildIndexContent() {
    return Container();
  }

  Widget _buildIndexFooter() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xff363636),
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentPageAct,
      onTap: (index) {
        setState(() {
          _currentPageAct = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/home_1.png',
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
          label: "Index",
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/calendar.png',
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
          backgroundColor: Colors.transparent,
          label: "Calendar",
        ),
        BottomNavigationBarItem(
            icon: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: const Color(0xff8687e7),
                borderRadius: BorderRadius.circular(32),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/clock.png',
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            ),
            backgroundColor: Colors.transparent,
            label: "Focuse"),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/user.png',
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            ),
            backgroundColor: Colors.transparent,
            label: "Profile")
      ],
    );
  }
}
