import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_icons.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/history/screens/history_screen.dart';
import 'package:movie_stream/view/home/providers/landing_provider.dart';
import 'package:movie_stream/view/home/screens/home_screen.dart';
import 'package:movie_stream/view/home/widgets/bottom_bara_button.dart';
import 'package:movie_stream/view/profile/screens/profile_screen.dart';
import 'package:movie_stream/view/search/screens/search_screen.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LandingProvider>(context);
    return Scaffold(
      body: pages[provider.selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        height: 90,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.secondary,
        ),
        child: Consumer<LandingProvider>(builder: (context, p, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomBarButton(
                isSelected: p.selectedIndex == 0,
                onTap: () => p.onNavigationChange(0),
                icon: AppIcon.home,
                title: "Home",
              ),
              BottomBarButton(
                isSelected: p.selectedIndex == 1,
                onTap: () => p.onNavigationChange(1),
                icon: AppIcon.search,
                title: "Search",
              ),
              BottomBarButton(
                isSelected: p.selectedIndex == 2,
                onTap: () => p.onNavigationChange(2),
                icon: AppIcon.history,
                title: "History",
              ),
              BottomBarButton(
                isSelected: p.selectedIndex == 3,
                onTap: () => p.onNavigationChange(3),
                icon: AppIcon.user,
                title: "Profile",
              ),
            ],
          );
        }),
      ),
    );
  }
}

