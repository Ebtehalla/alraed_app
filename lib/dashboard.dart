import 'screens/about.dart';
import 'screens/homepage.dart';
import 'screens/news.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var pages = [
    const HomePage(
      title: 'نادي الصقر',
      imagePath: '',
    ),
    const NewsPage(),
    const About(),
  ];
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedPage],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedPage,
        onTap: (i) => setState(() => _selectedPage = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(EneftyIcons.home_2_outline),
            title: const Text("Home"),
            selectedColor: const Color.fromARGB(255, 175, 35, 35),
          ),
          SalomonBottomBarItem(
            icon: const Icon(EneftyIcons.book_outline),
            title: const Text("News"),
            selectedColor: const Color.fromARGB(255, 175, 35, 35),
          ),
          SalomonBottomBarItem(
            icon: const Icon(EneftyIcons.undo_outline),
            title: const Text("About"),
            selectedColor: const Color.fromARGB(255, 175, 35, 35),
          ),
        ],
      ),
    );
  }
}
