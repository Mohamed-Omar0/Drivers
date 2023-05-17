import 'package:commuter/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool enable = true;
  String s = '''
* يجب وضع الحزام علي مدار الرحله
* يجب علي السائق و الراكب الأمامي ربط الحزام 
''';
  String s2 = '''''';
  String s3 = '''''';
  String s4 = '''''';
  String s5 = '''''';
  String s6 = '''''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                    width: 198,
                    height: 37,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 72, 70, 70),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "الصفحة الرئيسية",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "inter",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 140,
                    height: 33,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                          width: 8,
                        ),
                        Image(
                          image: AssetImage("lib/assets/images/Picture3.png"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "رسائل عاجلة",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "laila",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 344,
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
                          width: 343,
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
                                color:
                                    enable == true ? Colors.red : Colors.grey,
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
                                          : Color.fromARGB(255, 79, 79, 80),
                                    ),
                                  ),
                                  Text(
                                    "يوم الارسال:    الثلاثاء - 1:30pm",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: enable == true
                                          ? Colors.black
                                          : Color.fromARGB(255, 79, 79, 80),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 110,
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 344,
                    height: 49,
                    decoration: BoxDecoration(
                      color: !enable == true
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
                          width: 343,
                          height: 49,
                          decoration: BoxDecoration(
                            color: !enable == true
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
                                color:
                                    !enable == true ? Colors.red : Colors.grey,
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
                                      color: !enable == true
                                          ? Colors.black
                                          : Color.fromARGB(255, 79, 79, 80),
                                    ),
                                  ),
                                  Text(
                                    "يوم الارسال:    الثلاثاء - 1:30pm",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: !enable == true
                                          ? Colors.black
                                          : Color.fromARGB(255, 79, 79, 80),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 110,
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 280,
                  ),
                  SizedBox(
                    width: 75,
                    height: 20,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(
                            255,
                            102,
                            102,
                            102,
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
                        Navigator.of(context).pushNamed("urgentMessage");
                      },
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            "كل الرسائل",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 140,
                    height: 33,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                          width: 8,
                        ),
                        Image(
                          image: AssetImage("lib/assets/images/Picture3.png"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "رسائل هامة",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "laila",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 344,
                    height: 49,
                    decoration: BoxDecoration(
                      color: !enable == true
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
                          width: 343,
                          height: 49,
                          decoration: BoxDecoration(
                            color: !enable == true
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
                                color:
                                    !enable == true ? Colors.red : Colors.grey,
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
                                      color: !enable == true
                                          ? Colors.black
                                          : Color.fromARGB(255, 79, 79, 80),
                                    ),
                                  ),
                                  Text(
                                    "يوم الارسال:    الثلاثاء - 1:30pm",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: !enable == true
                                          ? Colors.black
                                          : Color.fromARGB(255, 79, 79, 80),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 110,
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 344,
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
                          width: 343,
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
                                color:
                                    enable == true ? Colors.red : Colors.grey,
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
                                          : Color.fromARGB(255, 79, 79, 80),
                                    ),
                                  ),
                                  Text(
                                    "يوم الارسال:    الثلاثاء - 1:30pm",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: enable == true
                                          ? Colors.black
                                          : Color.fromARGB(255, 79, 79, 80),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 110,
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 280,
                  ),
                  SizedBox(
                    width: 75,
                    height: 20,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(
                            255,
                            102,
                            102,
                            102,
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
                        Navigator.of(context).pushNamed("importantMessage");
                      },
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            "كل الرسائل",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "التعليمات",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "laila",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 180,
                child: GridView(
                  padding: EdgeInsets.all(5),
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    Material(
                      child: InkWell(
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "lib/assets/images/Picture4.png",
                                height: 31,
                                width: 30,
                              ),
                              Text(
                                "حزام الأمان",
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    116,
                                    113,
                                    113,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          instructionDialog(
                            context,
                            "تعليمات حزام الامان",
                            s,
                          );
                        },
                      ),
                    ),
                    Material(
                      child: InkWell(
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "lib/assets/images/Picture5.png",
                                height: 31,
                                width: 31,
                              ),
                              Text(
                                "السرعات",
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    116,
                                    113,
                                    113,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          instructionDialog(
                            context,
                            "تعليمات السرعات",
                            s,
                          );
                        },
                      ),
                    ),
                    Material(
                      child: InkWell(
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "lib/assets/images/Picture6.png",
                                height: 34,
                                width: 37,
                              ),
                              Text(
                                "الركاب",
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    116,
                                    113,
                                    113,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          instructionDialog(
                            context,
                            "تعليمات الركاب",
                            s,
                          );
                        },
                      ),
                    ),
                    Material(
                      child: InkWell(
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "lib/assets/images/Picture7.png",
                                height: 31,
                                width: 31,
                              ),
                              Text(
                                "السيارة",
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    116,
                                    113,
                                    113,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          instructionDialog(
                            context,
                            "تعليمات السيارة",
                            s,
                          );
                        },
                      ),
                    ),
                    Material(
                      child: InkWell(
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "lib/assets/images/Picture8.png",
                                height: 31,
                                width: 31,
                              ),
                              Text(
                                "الدورات",
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    116,
                                    113,
                                    113,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          instructionDialog(
                            context,
                            "تعليمات الدورات",
                            s,
                          );
                        },
                      ),
                    ),
                    Material(
                      child: InkWell(
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "lib/assets/images/Picture9.png",
                                height: 31,
                                width: 31,
                              ),
                              Text(
                                "تعليمات عامة",
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    116,
                                    113,
                                    113,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          instructionDialog(
                            context,
                            "تعليمات عامة",
                            s,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

messageDialog(BuildContext c, String title, String message) {
  return showDialog(
    context: c,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: Color.fromARGB(255, 223, 224, 227),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        title: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 31, 150, 21),
              fontSize: 20,
            ),
          ),
        ),
        content: SizedBox(
          width: 240,
          height: 120,
          child: Column(
            children: [
              Divider(
                color: Color.fromARGB(255, 206, 206, 206),
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  message,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 134, 129, 129),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(58, 18),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    "حسناً",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 31, 150, 21),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

instructionDialog(BuildContext c, String title, String data) {
  return showDialog(
    context: c,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: Color.fromARGB(255, 223, 224, 227),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        title: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 31, 150, 21),
              fontSize: 20,
            ),
          ),
        ),
        content: SizedBox(
          width: 240,
          height: 120,
          child: Column(
            children: [
              Divider(
                color: Color.fromARGB(255, 206, 206, 206),
                thickness: 1,
              ),
              SizedBox(
                height: 55,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Markdown(
                    padding: EdgeInsets.all(5),
                    physics: NeverScrollableScrollPhysics(),
                    styleSheet: MarkdownStyleSheet.fromTheme(
                      ThemeData(
                        textTheme: TextTheme(
                          bodyMedium: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 134, 129, 129),
                          ),
                        ),
                      ),
                    ),
                    data: (data),
                    softLineBreak: true,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                    Size(58, 18),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    "حسناً",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 31, 150, 21),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
