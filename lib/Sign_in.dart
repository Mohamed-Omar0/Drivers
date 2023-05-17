import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class UserNameFieldValidator {
  static String? validate(String value) {
    return value.isEmpty ? "User name Field can\'t be empty" : null;
  }
}

class PasswordFieldValidator {
  static String? validate(String value) {
    return value.isEmpty ? "Password Field can\'t be empty" : null;
  }
}

class _SignInState extends State<SignIn> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool secure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Logo",
                  style: TextStyle(
                    fontFamily: "Harlow Solid Italic",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Center(
                          child: Column(
                        children: [
                          const Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            width: 275,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              key: const Key("userName"),
                              validator: (value) =>
                                  UserNameFieldValidator.validate(value!),
                              keyboardType: TextInputType.text,
                              controller: userName,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(5),
                                hintText: "اسم المستخدم",
                                icon: Icon(Icons.mail_outline),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            width: 275,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              obscureText: secure == true ? secure : secure,
                              key: const Key("Password"),
                              validator: (value) =>
                                  UserNameFieldValidator.validate(value!),
                              keyboardType: TextInputType.text,
                              controller: password,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5),
                                border: InputBorder.none,
                                hintText: "كلمة السر",
                                icon: Icon(Icons.lock_outlined),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      secure = !secure;
                                    });
                                  },
                                  icon: secure == true
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 100,
                            height: 36,
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                shape: MaterialStatePropertyAll<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 31, 150, 21),
                                ),
                              ),
                              onPressed: () async {
                                if (userName.text == "" ||
                                    password.text == "") {
                                  Fluttertoast.showToast(
                                    msg:
                                        "The user name field or the password field can't be empty!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    fontSize: 16.0,
                                    backgroundColor: Colors.red[400],
                                    textColor: Colors.white,
                                  );
                                } else {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  Future.delayed(
                                    Duration(
                                      milliseconds: 100,
                                    ),
                                    () {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil(
                                              "Home", (route) => false);
                                    },
                                  );
                                }
                              },
                              child: const Center(
                                child: Text(
                                  "دخول",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
