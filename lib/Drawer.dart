import 'package:flutter/material.dart';

class Full_Drawer extends StatefulWidget {
  Full_Drawer({Key? key}) : super(key: key);

  @override
  State<Full_Drawer> createState() => _Full_DrawerState();
}

class _Full_DrawerState extends State<Full_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ListTile(
                    key: const Key("Profile"),
                    title: const Text(
                      "المستخدم",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () async {
                      Navigator.of(context).pushNamed("userData");
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "الصفحة الرئيسية",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: Image.asset(
                      "lib/assets/images/homeIcon.png",
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () {
                      Navigator.of(context).pushNamed("Home");
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "وردية جديدة",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: Image.asset(
                      "lib/assets/images/Picture7.png",
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () {
                      Navigator.of(context).pushNamed("newShift");
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "الخريطة",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: Image.asset(
                      "lib/assets/images/mapIcon.png",
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () {
                      Navigator.of(context).pushNamed("Map");
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "الدورات",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: Image.asset(
                      "lib/assets/images/roadIcon.png",
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () {
                      Navigator.of(context).pushNamed("Rides");
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "التقارير",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: Image.asset(
                      "lib/assets/images/reportIcon.png",
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () {
                      Navigator.of(context).pushNamed("Reports");
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "المساعدة",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: Image.asset(
                      "lib/assets/images/helpIcon.png",
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () {
                      Navigator.of(context).pushNamed("Help");
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "FAQ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: Image.asset(
                      "lib/assets/images/faqIcon.png",
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () {
                      Navigator.of(context).pushNamed("FAQ");
                    },
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  ListTile(
                    title: const Text(
                      "الخروج",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    leading: const Icon(
                      Icons.logout_outlined,
                      color: Colors.black,
                    ),
                    horizontalTitleGap: 1,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil("SignIn", (route) => false);
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "commuter",
                    style: TextStyle(
                      fontFamily: "Harlow Solid Italic",
                      fontSize: 30,
                      color: Color.fromARGB(255, 102, 102, 102),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
