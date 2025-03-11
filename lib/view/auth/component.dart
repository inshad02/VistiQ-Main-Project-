import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/apartment and cloud.png",
                cacheHeight: 200,
              ),
            ],
          ),
        ),
        Container(
          height: 361,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: const Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0Xff5731AB),
                      fontFamily: "Poppins Bold"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    "Enter your valid mobile number",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff969191),
                        fontFamily: "Poppins Bold"),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
