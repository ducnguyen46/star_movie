import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_movie/share/navigator/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MovieRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items: [
                const BottomNavigationBarItem(label: 'Movies', icon: Icon(Icons.movie)),
                const BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
              ],
            ));
      },
    );
  }
}
