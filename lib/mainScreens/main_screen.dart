import 'package:codecademy_drivers_app/tab_pages/earning_tab.dart';
import 'package:codecademy_drivers_app/tab_pages/home_tab.dart';
import 'package:codecademy_drivers_app/tab_pages/profile_tab.dart';
import 'package:codecademy_drivers_app/tab_pages/ratings_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeTabPage(),
          EarningsTabPage(),
          RatingsTabPage(),
          ProfileTabPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: "Earnings",),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Ratings",),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",),
        ],
        unselectedItemColor: Colors.lightBlue,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    ); // <-- The extra parenthesis is removed here
  }
}
