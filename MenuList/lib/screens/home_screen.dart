import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../DataBase/fetch_firestore.dart';
import '../palatte.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Column(children: [
              Text(
                "Hungry Hands",
                style: GoogleFonts.lemon(textStyle: kHeaderText),
              ),
              Text(
                "Restaurant Admin",
                style: GoogleFonts.lemon(textStyle: kBodyText),
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FetchFire()));
                },
                child: const Text('Fetch Data for firestore'),
                color: Colors.blue,
                textColor: Colors.white,
                minWidth: 300,
                height: 40,
              ),
              Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 10)
                    // )
                    Expanded(
                      child: SingleChildScrollView(
                        child: ListView(
                          shrinkWrap: true,
                          children: [Text("order")],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [Text("order")],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [Text("order")],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.chartLine),
              label: "Analytics",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 210, 71, 61),
          onTap: _onItemTapped,
        ),
      ),
    ]);
  }
}
