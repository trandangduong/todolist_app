import 'package:flutter/material.dart';
import 'package:todolist_app/main.dart';
import 'package:todolist_app/ui/index/task/create_task_page.dart';

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
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScheme.onBackground,
      body: _pageAct.elementAt(_currentPageAct),
      bottomNavigationBar: _buildIndexFooter(),
      floatingActionButton: _addTaskButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _addTaskButton() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xff8687e7),
        borderRadius: BorderRadius.circular(32),
      ),
      child: IconButton(
        onPressed: _onCreateTask,
        icon: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _indexPage() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildIndexStatusBar(),
            _buildIndexHeader(),
            _buildIndexMiddle(),
            _buildIndexContent(),
          ],
        ),
      ),
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
              color: Colors.white.withOpacity(0.87),
            ),
          ),
          Text(
            'Tap + to add your tasks',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(0.87),
            ),
          ),
        ]);
  }

  Widget _buildIndexContent() {
    return Container();
  }

  Widget _buildIndexFooter() {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
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
          //const BottomNavigationBarItem(icon: Text('')),
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
      ),
    );
  }

  void _onCreateTask() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => const Padding(
        padding: EdgeInsets.fromLTRB(24, 48, 24, 24),
        child: NewTask(),
      ),
      backgroundColor: Colors.black,
    );
  }
}
