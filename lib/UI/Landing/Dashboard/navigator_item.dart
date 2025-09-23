import 'package:flutter/material.dart';
import 'package:osjproject/UI/Landing/Chat/chat_show_page.dart';
import 'package:osjproject/UI/Landing/Home_Page/home_page.dart';
import 'package:osjproject/UI/Landing/course/my_course.dart';
import 'package:osjproject/UI/Landing/Profile/profile.dart';

class NavigatorItem {
  final Widget icon;
  final int index;
  final Widget screen;

  NavigatorItem(this.icon, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem(
      const SizedBox(
          width: 30,
          height: 30,
          child: ImageIcon(AssetImage("assets/png/home.png"))),
      0,
      const HomePage()),
  NavigatorItem(
    const SizedBox(
      width: 30,
      height: 30,
      child: ImageIcon(
        AssetImage(
          "assets/png/mycourse.png",
        ),
      ),
    ),
    1,
    const MyCourse(),
  ),
  NavigatorItem(
    const SizedBox(
        width: 30,
        height: 30,
        child: ImageIcon(AssetImage("assets/png/chat.png"))),
    2,
    const ChatShow(),
  ),
  NavigatorItem(
      const SizedBox(
          width: 30,
          height: 30,
          child: ImageIcon(AssetImage("assets/png/person.png"))),
      3,
      const Profile()),
];
List<NavigatorItem> tabNavigatorItems = [
  NavigatorItem(
      const SizedBox(
          width: 50,
          height: 50,
          child: ImageIcon(
            AssetImage(
              "assets/png/home.png",
            ),
          )),
      0,
      const HomePage()),
  NavigatorItem(
    const SizedBox(
      width: 50,
      height: 50,
      child: ImageIcon(
        AssetImage(
          "assets/png/mycourse.png",
        ),
      ),
    ),
    1,
    const MyCourse(),
  ),
  NavigatorItem(
    const SizedBox(
        width: 50,
        height: 50,
        child: ImageIcon(AssetImage("assets/png/chat.png"))),
    2,
    const ChatShow(),
  ),
  NavigatorItem(
      const SizedBox(
          width: 50,
          height: 50,
          child: ImageIcon(AssetImage("assets/png/person.png"))),
      3,
      const Profile()),
];
