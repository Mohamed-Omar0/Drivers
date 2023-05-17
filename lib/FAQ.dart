import 'package:commuter/accordi.dart';
import 'package:flutter/material.dart';
import 'Drawer.dart';

class FAQ extends StatefulWidget {
  FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  Widget img = Image.asset(
    "lib/assets/images/Picture14.png",
    width: 32,
    height: 27,
  );
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
                                  "lib/assets/images/faqIcon.png",
                                  color: Colors.green,
                                  width: 35,
                                  height: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "FAQ",
                                  style: TextStyle(
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
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 160,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 251, 251, 251),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/assets/images/Picture13.png",
                        width: 52,
                        height: 18,
                      ),
                      Text(
                        "اسألة شائعة",
                        style: TextStyle(
                          fontFamily: "laila",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 101, 101, 101),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 380,
              child: Accordi(
                headerBackgroundColor: Color.fromARGB(255, 240, 240, 240),
                contentBackgroundColor: Color.fromARGB(255, 240, 240, 240),
                contentBorderColor: Color.fromARGB(255, 240, 240, 240),
                contentVerticalPadding: 5,
                rightIcon: img,
                flipRightIconIfOpen: true,
                paddingListTop: 5,
                paddingListBottom: 0,
                children: [
                  for (int i = 1; i <= 20; i++)
                    accordion_section(
                      header: Row(
                        children: [
                          Text(
                            "س$i: ",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "ما انواع الغرامه و المخالفات و قيمتها",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: "inter",
                            ),
                          ),
                        ],
                      ),
                      content: Column(
                        children: [
                          Divider(
                            color: Colors.black,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet consectetur. In donec consectetur amet egestas mauris dui. Lorem et libero viverra neque. At ante posuere sapien sed. Eleifend sed elementum potenti amet.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "inter",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 290,
                ),
                SizedBox(
                  width: 80,
                  height: 30,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(
                          255,
                          55,
                          53,
                          46,
                        ),
                      ),
                      shape: MaterialStatePropertyAll(OutlinedBorder.lerp(
                        BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        1,
                      )),
                      fixedSize: MaterialStatePropertyAll(
                        Size(70, 1),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("Home");
                    },
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          "الرجوع",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
