import 'package:flutter/material.dart';
import 'Drawer.dart';

class userData extends StatefulWidget {
  userData({Key? key}) : super(key: key);

  @override
  State<userData> createState() => _userDataState();
}

class _userDataState extends State<userData> {
  List fieldName = [
    "اسم المستخدم",
    "رقم الهاتف",
    "البريد الاكتروني",
    "العنوان",
    "نوع السيارة",
  ];
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
                          SizedBox(
                            width: 340,
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
                  width: 15,
                ),
                Image.asset(
                  "lib/assets/images/Picture11.png",
                  width: 29,
                  height: 29,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "بيانات المستخدم",
                  style: TextStyle(
                    fontFamily: "inter",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            for (int i = 0; i <= (fieldName.length - 1); i++)
              FieldsData(fieldName, i),
            SizedBox(
              height: 40,
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

FieldsData(List list, int counter) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          SizedBox(
            width: 25,
          ),
          Image.asset(
            "lib/assets/images/Picture12.png",
            width: 10,
            height: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "${list[counter]}",
            style: TextStyle(
              fontFamily: "inter",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Container(
            width: 300,
            height: 35,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 233, 233, 233),
              border: Border.all(
                color: Color.fromARGB(255, 233, 233, 233),
              ),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "data",
                  style: TextStyle(
                    color: Color.fromARGB(255, 123, 123, 123),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
    ],
  );
}
