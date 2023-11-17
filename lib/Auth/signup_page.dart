import 'package:engigen/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF2B3481), Colors.black],
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset(assetname),
            const Text(
              "manage through your way",
              style: TextStyle(
                  color: Color(0xFFD78F09), fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 325,
              child: Container(
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xFFD78F09),
                    ),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(45, 45)),
                    color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.5),
                  child: TextField(
                    controller: email,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        hintText: 'E-mail',
                        hintStyle: TextStyle(color: Colors.black26),
                        border: InputBorder.none,
                        fillColor: Colors.black,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xFFD78F09),
                        ),
                        contentPadding: EdgeInsets.only(top: 15)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 325,
              child: Container(
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xFFD78F09),
                    ),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(45, 45)),
                    color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.5),
                  child: TextField(
                    controller: username,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.black26),
                        border: InputBorder.none,
                        fillColor: Colors.black,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xFFD78F09),
                        ),
                        contentPadding: EdgeInsets.only(top: 15)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 325,
              child: Container(
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xFFD78F09),
                    ),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(45, 45)),
                    color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.5),
                  child: TextField(
                    controller: password,
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black26),
                        border: InputBorder.none,
                        fillColor: Colors.black,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFFD78F09),
                        ),
                        contentPadding: EdgeInsets.only(top: 15)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already registred?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Click Here?',
                      style: TextStyle(
                        color: Color(0xFFD78F09),
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xFFD78F09),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
                minimumSize: const Size(200, 50),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
          ]),
        ),
      ),
    );
  }
}
