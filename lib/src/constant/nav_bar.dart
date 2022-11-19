import 'package:coffee_app_ui/src/screens/cart/screen.dart';
import 'package:coffee_app_ui/src/screens/favourite/screen.dart';
import 'package:coffee_app_ui/src/screens/home/screen.dart';
import 'package:coffee_app_ui/src/screens/notification/screen.dart';
import 'package:coffee_app_ui/src/screens/profile/screen.dart';
import 'package:coffee_app_ui/src/widgets/custom_nav_icons.dart';
import 'package:flutter/widgets.dart';

final List<Widget> hostBottomNavBody = [
  const HomeScreen(),
  const FavouriteScreen(),
  const CartScreen(),
  const NotificationScreen(),
  const ProfileScreen()
];

List<BottomNavigationBarItem> bottomNavItems = const [
  BottomNavigationBarItem(
      icon: Icon(NavBarIcons.home),
      label: 'Home',
      activeIcon: Icon(NavBarIcons.homeFilled)),
  BottomNavigationBarItem(
      icon: Icon(NavBarIcons.favourite),
      label: 'Favourite',
      activeIcon: Icon(NavBarIcons.favouriteFilled)),
  BottomNavigationBarItem(
      icon: Icon(NavBarIcons.cart),
      label: 'Cart',
      activeIcon: Icon(NavBarIcons.cartFilled)),
  BottomNavigationBarItem(
      icon: Icon(NavBarIcons.notification),
      label: 'Notification',
      activeIcon: Icon(NavBarIcons.notificationFilled)),
  BottomNavigationBarItem(
      icon: Icon(NavBarIcons.profile),
      label: 'Profile',
      activeIcon: Icon(NavBarIcons.profileFilled)),
];
