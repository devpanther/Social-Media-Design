import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:socialmedia/screen/post.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class TabBars extends StatefulWidget {
  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  PersistentTabController _controller;

  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  List<Widget> _buildScreens() {
    return [Post(), Post(), Post(), Post()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('images/home.svg', semanticsLabel: 'Acme Logo'),
        title: ("Home"),
        activeColorPrimary: Color(0xFF6486FF),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('images/statistics.svg',
            semanticsLabel: 'Acme Logo'),
        title: ("Stats"),
        activeColorPrimary: Color(0xFF6486FF),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon:
            SvgPicture.asset('images/wallet.svg', semanticsLabel: 'Acme Logo'),
        title: ("Wallet"),
        activeColorPrimary: Color(0xFF6486FF),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'images/menu.svg',
          semanticsLabel: 'Acme Logo',
          width: 18,
        ),
        title: ("More"),
        activeColorPrimary: Color(0xFF6486FF),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  // Widget _pageChooser(int page) {
  //   switch (page) {
  //     case 0:
  //       return _homePage;
  //       break;
  //     case 1:
  //       return _earningsPage;
  //       break;
  //     case 2:
  //       return _ratingPage;
  //       break;
  //     case 3:
  //       return _profilePage;
  //       break;
  //     default:
  //       return new Container(
  //           child: new Center(
  //               child:
  //                   new Text("No page found", style: TextStyle(fontSize: 30))));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),

      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
