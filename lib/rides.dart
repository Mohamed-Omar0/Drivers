import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Drawer.dart';

class Rides extends StatefulWidget {
  Rides({Key? key}) : super(key: key);

  @override
  State<Rides> createState() => _RidesState();
}

class _RidesState extends State<Rides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "commuter",
          style: TextStyle(
            fontFamily: "Harlow Solid Italic",
            fontSize: 18,
            color: Color.fromARGB(255, 102, 102, 102),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      endDrawer: Full_Drawer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 392.7,
                  height: 140,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 22,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                        "lib/assets/images/pageBackground.png",
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.grey,
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 15,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 225, 225, 225),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 39,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color.fromARGB(255, 112, 112, 112),
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  "lib/assets/images/roadIcon.png",
                                  width: 40,
                                  color: Colors.green,
                                ),
                                Text(
                                  "الدورات",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                    fontFamily: "laila",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("Home");
                            },
                            icon: Icon(
                              Icons.arrow_circle_left_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Table(
              columnWidths: {
                0: FixedColumnWidth(77),
                1: FixedColumnWidth(95),
                2: FixedColumnWidth(85),
                3: FixedColumnWidth(85),
                4: FixedColumnWidth(50.5),
              },
              children: [
                TableRow(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 2,
                        right: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 76, 85),
                        border: Border(
                          top: BorderSide(
                            color: Color.fromARGB(255, 48, 48, 48),
                            width: 4,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "رقم الدورة",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "laila",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 76, 85),
                        border: Border(
                          top: BorderSide(
                            color: Color.fromARGB(255, 48, 48, 48),
                            width: 4,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "ايام عمل الدورة",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "laila",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 76, 85),
                        border: Border(
                          top: BorderSide(
                            color: Color.fromARGB(255, 48, 48, 48),
                            width: 4,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "ميعاد الدورة",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "laila",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 76, 85),
                        border: Border(
                          top: BorderSide(
                            color: Color.fromARGB(255, 48, 48, 48),
                            width: 4,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "ذهاب/عودة",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "laila",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 76, 85),
                        border: Border(
                          top: BorderSide(
                            color: Color.fromARGB(255, 48, 48, 48),
                            width: 4,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "المكان",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "laila",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: ListView(
                children: [
                  for (int i = 1; i <= 20; i++)
                    rideRow(
                      (i),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

rideRow(int num) {
  return Column(
    children: [
      Container(
        width: 390,
        height: 37,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.green,
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 1,
            ),
            Container(
              width: 389,
              height: 37,
              decoration: BoxDecoration(
                color: num % 2 == 0
                    ? Color.fromARGB(255, 236, 236, 236)
                    : Color.fromARGB(255, 245, 245, 245),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 3.5,
                  ),
                  Table(
                    columnWidths: {
                      0: FixedColumnWidth(70),
                      1: FixedColumnWidth(95),
                      2: FixedColumnWidth(85),
                      3: FixedColumnWidth(85),
                      4: FixedColumnWidth(50.5),
                    },
                    defaultColumnWidth: const FixedColumnWidth(70),
                    children: [
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "$num",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "laila",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Text(
                                "الاحد / الإثنين /الثلاثاء الأربعاء / الخميس",
                                style: TextStyle(
                                  fontFamily: "laila",
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Center(
                                child: Text(
                                  "7:30 pm",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: "laila",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "ذهاب",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "laila",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(7),
                            child: Center(
                              child: InkWell(
                                child: Image.asset(
                                  "lib/assets/images/mapIcon.png",
                                  height: 24,
                                ),
                                onTap: () async {
                                  await launchUrl(
                                    mode: LaunchMode.externalApplication,
                                    Uri.parse(
                                        "https://goo.gl/maps/FvRMjyJ6qmhZwzCf7"),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 5,
      ),
    ],
  );
}
