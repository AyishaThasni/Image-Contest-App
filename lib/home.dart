import 'package:flutter/material.dart';
import 'package:picture_contest_app/Tabbed%20pages/about.dart';
import 'package:picture_contest_app/Tabbed%20pages/post.dart';
import 'Tabbed pages/home_page_screen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index = 0;
  final screens = [
    const Frontpage(),
    const PostImage(),
    const About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:
              const Icon(Icons.camera_roll_sharp, color: Color(0xffffc371)),
          title: const Text('PiContest'),
          actions: const [
            Icon(Icons.flag_outlined),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
          ],
          backgroundColor: const Color(0xff4FB19D)),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Color(0xffffc371),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xff4FB19D),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.add_a_photo_outlined), label: 'Post'),
            NavigationDestination(
                icon: Icon(Icons.account_circle), label: 'About'),
          ],
        ),
      ),
    );
  }
}
