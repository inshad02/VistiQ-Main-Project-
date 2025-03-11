import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:vistiq/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0Xff5731AB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(100),
            child: Image.asset(
              "assets/images/logo.png",
              cacheHeight: 50,
            ),
          ),
          Column(
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
                height: mq.height * 0.42,
                width: mq.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0Xff5731AB),
                              fontFamily: "Poppins Bold"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Text(
                            "Enter your valid mobile number",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff969191),
                                fontFamily: "Poppins Medium"),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 34),
                          child: Text(
                            "Mobile no.",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff969191),
                                fontFamily: "Poppins Medium"),
                          ),
                        ),
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24)),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: MaterialButton(
                            onPressed: () {},
                            color: const Color(0Xff5731AB),
                            height: 56,
                            minWidth: 344,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            child: const Text(
                              "Contiue",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "Poppins Bold"),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 22),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "By clicking I accept the",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff969191),
                                    fontFamily: "Poppins Semi Bold"),
                              ),
                              Text(
                                "Terms&Conditions",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontFamily: "Poppins Bold"),
                              ),
                              Text(
                                "and",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff969191),
                                    fontFamily: "Poppins Semi Bold"),
                              ),
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontFamily: "Poppins Bold"),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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
