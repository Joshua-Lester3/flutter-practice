import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262626),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(16),
            color: Colors.white,
            activeColor: Colors.white,
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            tabs: [
              GButton(icon: Icons.folder, text: 'Saved'),
              GButton(icon: Icons.search, text: 'Search'),
            ]
          ),
        ),
      ),
    );
  }
}