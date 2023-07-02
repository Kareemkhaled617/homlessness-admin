import 'package:admin_nicu/pages/home_page.dart';
import 'package:admin_nicu/pages/nicu_chat/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../../common/app_colors.dart';
import '../add_category/category.dart';
import '../calender/calender.dart';
import '../clients/clients.dart';
import '../request/request.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "HomeLessNess",
                style: TextStyle(
                  color: AppColor.yellow,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DrawerListTile(
              title: "Dashboard",
              icon: "assets/menu_home.png",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            DrawerListTile(
              title: "Users",
              icon: "assets/menu_recruitment.png",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Clients()));
              },
            ),
            DrawerListTile(
              title: "Chats",
              icon: "assets/images/img.png",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeChat()));
              },
            ),
            DrawerListTile(
              title: "Request",
              icon: "assets/menu_calendar.png",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RequestPage()));
              },
            ),
            DrawerListTile(
              title: "Medicines",
              icon: "assets/menu_report.png",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Category()));
              },
            ),
            DrawerListTile(
              title: "Calendar",
              icon: "assets/menu_calendar.png",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CalenderPage()));
              },
            ),
            DrawerListTile(
              title: "Logout",
              icon: "assets/menu_settings.png",
              press: () {},
            ),
            const Spacer(),
            Image.asset("assets/sidebar_image.png")
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;

  const DrawerListTile(
      {Key? key, required this.title, required this.icon, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        color: AppColor.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
