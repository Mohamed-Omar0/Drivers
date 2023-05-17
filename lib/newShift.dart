import 'package:flutter/material.dart';
import 'Drawer.dart';

class newShift extends StatefulWidget {
  newShift({Key? key}) : super(key: key);

  @override
  State<newShift> createState() => _newShiftState();
}

class _newShiftState extends State<newShift> {
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
      body: Column(
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
                child: Directionality(
                  textDirection: TextDirection.rtl,
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
                                  "lib/assets/images/Picture10.png",
                                  width: 28,
                                  height: 28,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "وردية جديدة",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
