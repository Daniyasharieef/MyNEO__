import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'HelpPage.dart';
import 'HistoryPage.dart';
import 'HomePage.dart';
import 'Qrpage.dart';
import 'SettingsScreen/SettingsPage.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeTabState();
  }
}

class _HomeTabState extends State<HomeTabPage> {
  int _selectedIndex = 0;
  PersistentTabController? _controller;
bool? _hideNavBar;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
       icon:const  Icon(Icons.home_filled,
       ),
        activeColorPrimary:const Color(0xFF29B6F6),
        inactiveColorPrimary: Colors.lightBlueAccent[100],
      ),
      PersistentBottomNavBarItem(
      icon: Image.asset(
                "assets/images/his.png",
              ),
              inactiveIcon: Image.asset(
                "assets/images/hisd.png",
              ),
        activeColorPrimary:const Color(0xFF29B6F6),
        inactiveColorPrimary: Colors.lightBlueAccent[100],
      ), PersistentBottomNavBarItem(
        icon:Image.asset(
                    "assets/images/qr.png",
                  ),
        inactiveIcon: Image.asset(
          "assets/images/qr.png",
        ),

        iconSize: 10,
        activeColorPrimary: Colors.black12,
        inactiveColorPrimary: Colors.lightBlueAccent[100],
      ), PersistentBottomNavBarItem(
                icon: Image.asset(
                  "assets/images/sett.png",
                ),
                inactiveIcon: Image.asset(
                  "assets/images/settd.png",
                ),
        inactiveColorPrimary: Colors.lightBlueAccent[100],
        activeColorPrimary:const Color(0xFF29B6F6),

      ), PersistentBottomNavBarItem(
        icon: const Icon(Icons.help_outlined,),
        inactiveColorPrimary: Colors.lightBlueAccent[100],
        activeColorPrimary:const Color(0xFF29B6F6),

      ),
    ];
  }
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const HistoryPage(),
    const QrPage(),
    const SettingsPage(),
    const HelpPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _controller = PersistentTabController(initialIndex: 0);
      _hideNavBar=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:PersistentTabView(
          context,
          controller: _controller,
          screens: _widgetOptions,
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            adjustScreenBottomPaddingOnCurve: true,
            borderRadius: BorderRadius.circular(50.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style17, // Choose the nav bar style with this property.
        ));}}


