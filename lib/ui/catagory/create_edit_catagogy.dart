import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/ui/login_register/register_page.dart';

class CreateAndEditCata extends StatefulWidget {
  const CreateAndEditCata({super.key});

  @override
  State<CreateAndEditCata> createState() => _CreateAndEditCataState();
}

class _CreateAndEditCataState extends State<CreateAndEditCata> {
  final _nameCataTextController = TextEditingController();
  final List<Color> _colorCata = [];
  Color? _colorSelected;

  @override
  void initState() {
    super.initState();
    _colorCata.addAll([
      const Color(0xFFC9CC41),
      const Color(0xFF66CC41),
      const Color(0xFF41CCA7),
      const Color(0xFF4181CC),
      const Color(0xFF41A2CC),
      const Color(0xFFCC8441),
      const Color(0xFF9741CC),
      const Color(0xFFCC4173),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  _buildTilte(),
                  _buildInputCataName(),
                  _buildCataIcon(),
                  _buildCataListColor(),
                ],
              ),
            ),
            _buildCreateAndCancelButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTilte() {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 26),
      child: Text(
        'Create new category',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.lato().fontFamily,
          color: Colors.white.withOpacity(0.87),
        ),
      ),
    );
  }

  Widget _buildInputCataName() {
    return Form(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category name :',
              style: TextStyle(
                fontSize: 16,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: Colors.white.withOpacity(0.87),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Category name",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: const Color(0xFFAFAFAF),
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
          ],
        ),
      ),
    );
  }

  Widget _buildCataIcon() {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category icon :',
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white.withOpacity(0.87),
            ),
          ),
          GestureDetector(
            onTap: () {
              // todo
            },
            child: Container(
              height: 37,
              margin: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white.withOpacity(0.21),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Choose icon from library',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.white.withOpacity(0.87),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCataListColor() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category color :',
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white.withOpacity(0.87),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            width: double.infinity,
            height: 36,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _colorCata.length,
                itemBuilder: (context, index) {
                  Color colorPick = _colorCata.elementAt(index);
                  bool isSelected = _colorSelected == colorPick;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _colorSelected = colorPick;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: colorPick,
                      ),
                      child: isSelected ? const Icon(Icons.check) : null,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget _buildCreateAndCancelButton() {
    return Container(
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 47),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              //todo cancelOnPressed();
            },
            child: Text(
              'Cancel',
              style: TextStyle(
                fontSize: 16,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: Colors.white.withOpacity(0.44),
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: _onTapCreatedCata,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8687E7).withOpacity(1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              disabledBackgroundColor: const Color(0xFF8687E7).withOpacity(0.5),
            ),
            child: Text(
              'Create Category',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.lato().fontFamily,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onTapCreatedCata() {
    final nameCata = _nameCataTextController.text;
    // todo
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
