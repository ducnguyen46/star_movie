import 'package:flutter/material.dart';
import 'package:star_movie/presentation/pages/pages.dart';
import 'package:star_movie/share/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageViewController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          MoviePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          _pageViewController.jumpToPage(index);
          setState(() {
            currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            label: 'Movies'.hardCode,
            icon: const Icon(Icons.movie),
          ),
          NavigationDestination(
            label: 'Profile'.hardCode,
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
