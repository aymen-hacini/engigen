import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 800,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF2B3481), Colors.black],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 97,
              top: 132,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 98,
                      height: 95.89,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 18.69,
                            top: 20.32,
                            child: Container(
                              width: 59.65,
                              height: 55.26,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(),
                              child: const Stack(children: []),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 164,
                      height: 99.65,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 47.76,
                            top: 32.65,
                            child: SizedBox(
                              width: 116.24,
                              child: Text(
                                'Linker',
                                style: TextStyle(
                                  color: Color(0xFFD78F09),
                                  fontSize: 40.39,
                                  fontFamily: 'Mukta',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(
                              width: 28.84,
                              height: 70.46,
                              child: Text(
                                'K',
                                style: TextStyle(
                                  color: Color(0xFFD78F09),
                                  fontSize: 68.75,
                                  fontFamily: 'Mukta',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E000000),
                      blurRadius: 6,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      height: 24,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0)),
                      child: const Stack(children: []),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 82,
              top: 294,
              child: Text(
                'Manage your way through',
                style: TextStyle(
                  color: Color(0xB5EEEEEE),
                  fontSize: 18,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 29,
              top: 370,
              child: Container(
                width: 277,
                height: 45,
                decoration: ShapeDecoration(
                  color: const Color(0xFF2B3481),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0xFF2B3481),
                      blurRadius: 21,
                      offset: Offset(2, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 29,
              top: 435,
              child: Container(
                width: 277,
                height: 45,
                decoration: ShapeDecoration(
                  color: const Color(0xFF2B3481),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0xFF2B3481),
                      blurRadius: 21,
                      offset: Offset(2, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 117,
              top: 532,
              child: SizedBox(
                width: 126,
                height: 38,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 126,
                        height: 38,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD78F09),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 26,
                      top: 2,
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Color(0xFF2B3481),
                          fontSize: 20,
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.w800,
                          height: 0,
                          letterSpacing: 1.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 43,
              top: 382,
              child: Container(
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 15),
                    Text(
                      'Loremipsum@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 43,
              top: 446,
              child: Container(
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 15),
                    Text(
                      '**********',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 127,
              top: 589,
              child: Text(
                'Or Sign In with',
                style: TextStyle(
                  color: Color(0xADEEEEEE),
                  fontSize: 14,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w300,
                  height: 0,
                  letterSpacing: 0.84,
                ),
              ),
            ),
            Positioned(
              left: 120,
              top: 635,
              child: Container(
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 16),
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 43,
              top: 487,
              child: Container(
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'You’re not registered ?',
                      style: TextStyle(
                        color: Color(0xEEEEEEEE),
                        fontSize: 12,
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w300,
                        height: 0,
                        letterSpacing: 0.36,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Click Here',
                      style: TextStyle(
                        color: Color(0xFFD78F09),
                        fontSize: 14,
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
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
