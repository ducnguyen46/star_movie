import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:star_movie/share/utils/utils.dart';

class ScaffoldWithNavigatorBar extends StatelessWidget {
  const ScaffoldWithNavigatorBar({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: shell.currentIndex,
        onDestinationSelected: (index) {
          shell.goBranch(
            index,
            initialLocation: index == shell.currentIndex,
          );
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
