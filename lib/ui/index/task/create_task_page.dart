import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final _nameTaskTextController = TextEditingController();
  final _nameDescriptionTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        _buildAddTask(),
        _buildIconTaskBottom(),
      ]),
    );
  }

  Widget _buildAddTask() {
    return Form(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24)
            .copyWith(top: 12, bottom: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Task :',
              style: TextStyle(
                fontSize: 20,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: TextFormField(
                controller: _nameTaskTextController,
                decoration: InputDecoration(
                  hintText: "add your new task.",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.white.withOpacity(0.87),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  fillColor: const Color(0x0ff79797),
                  filled: true,
                ),
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: TextFormField(
                controller: _nameDescriptionTextController,
                decoration: InputDecoration(
                  hintText: "Description",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.white.withOpacity(0.87),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  fillColor: const Color(0x0ff79797),
                  filled: true,
                ),
                style: TextStyle(
                  fontSize: 16,
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

  Widget _buildIconTaskBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/timer.png',
                  height: 24,
                  width: 24,
                  fit: BoxFit.fill,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/tag.png',
                  height: 24,
                  width: 24,
                  fit: BoxFit.fill,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/flag.png',
                  height: 24,
                  width: 24,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.cancel_outlined),
        ),
        IconButton(
          onPressed: _saveNewTask,
          icon: Image.asset(
            'assets/images/send.png',
            height: 24,
            width: 24,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

  void _showDialogChooseCata() {
    showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) {
        return const SizedBox(
          height: 200,
          width: 200,
        );
      },
    );
  }

  void _saveNewTask() {
    //todo
  }
}
