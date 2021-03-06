// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_final_fields, no_leading_underscores_for_local_identifiers, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../untils/colors.dart';
import '../screen/showBottomNav_screen.dart';

class LogInWidget extends StatefulWidget {
  @override
  State<LogInWidget> createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  bool _visibility = false;
  bool _isCheak = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              cursorColor: appColor().cardColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                labelText: "Your Email",
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 221, 221, 221),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 230, 227, 227),
                  ),
                ),
              ),
              style: TextStyle(
                color: appColor().btnColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: _visibility ? false : true,
              cursorColor: appColor().cardColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                suffixIcon: IconButton(
                  icon: Icon(
                    _visibility ? Icons.visibility : Icons.visibility_off,
                    color: appColor().cardColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _visibility = !_visibility;
                    });
                  },
                ),
                iconColor: Colors.grey,
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 221, 221, 221),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 230, 227, 227),
                  ),
                ),
              ),
              style: TextStyle(
                color: appColor().btnColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: appColor().btnColor,
                  value: _isCheak,
                  onChanged: (var value) {
                    setState(() {
                      _isCheak = value!;
                    });
                  },
                ),
                Text(
                  "Remember Me",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appColor().btnColor,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appColor().cardColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, // background
                    onPrimary: Colors.white, // foreground
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(ShowBottomNavScreen.routeName);
                },
                child: Text(
                  "Log In",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: appColor().btnColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Don't have an account ? ",
                      ),
                      TextSpan(
                        text: " Register",
                        style: TextStyle(
                          color: appColor().cardColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or log in with",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 15),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                Image.asset(
                  "assets/auth/google.png",
                  height: 31,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
