import 'package:flutter/material.dart';
import 'Drawer.dart';
import 'Home_Page.dart';

class importantMessage extends StatefulWidget {
  importantMessage({Key? key}) : super(key: key);

  @override
  State<importantMessage> createState() => _importantMessageState();
}

class _importantMessageState extends State<importantMessage> {
  bool enable = true;
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
                                  "رسائل هامة",
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
                              Navigator.pop(context);
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
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: ListView(
              children: [
                for (int i = 0; i <= 20; i++)
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        Container(
                          width: 380,
                          height: 49,
                          decoration: BoxDecoration(
                            color: enable == true
                                ? Colors.red
                                : Color.fromARGB(123, 131, 133, 123),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 379,
                                height: 49,
                                decoration: BoxDecoration(
                                  color: enable == true
                                      ? Colors.white
                                      : Color.fromARGB(179, 240, 240, 240),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset(
                                      color: enable == true
                                          ? Colors.red
                                          : Colors.grey,
                                      "lib/assets/images/redCircle.png",
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.topRight,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "اسم المرسل:   محمد سامي",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: enable == true
                                                ? Colors.black
                                                : Color.fromARGB(
                                                    255, 79, 79, 80),
                                          ),
                                        ),
                                        Text(
                                          "يوم الارسال:    الثلاثاء - 1:30pm",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: enable == true
                                                ? Colors.black
                                                : Color.fromARGB(
                                                    255, 79, 79, 80),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 149,
                                    ),
                                    IconButton(
                                      iconSize: 20,
                                      onPressed: () {
                                        setState(
                                          () {
                                            enable = !enable;
                                          },
                                        );
                                        messageDialog(
                                          context,
                                          "الرسالة",
                                          "برجاء التواصل مع عميل أ في اسرع وقت",
                                        );
                                      },
                                      icon: Icon(
                                        Icons.exit_to_app,
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
                      ],
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
