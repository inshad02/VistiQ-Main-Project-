import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:vistiq/main.dart';
import 'package:vistiq/view/mainPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            child: Image.asset("assets/images/logo.png", cacheHeight: 50),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/images/apartment and cloud.png",
                      cacheHeight: 200),
                ),
              ),
              _buildLoginContainer(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLoginContainer(BuildContext context) {
    return Container(
      height: mq.height * 0.42,
      width: mq.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      padding: const EdgeInsets.all(32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildText("Login", 28, const Color(0Xff5731AB), "Poppins Bold"),
            _buildText("Enter your valid mobile number", 12,
                const Color(0xff969191), "Poppins Medium",
                top: 12),
            _buildText(
                "Mobile no.", 12, const Color(0xff969191), "Poppins Medium",
                top: 34),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24)),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) => print(phone.completeNumber),
              ),
            ),
            _buildButton(context),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text, double size, Color color, String font,
      {double top = 0}) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: Text(text,
          style: TextStyle(fontSize: size, color: color, fontFamily: font)),
    );
  }

  Widget _buildButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const BottomNav()));
        },
        color: const Color(0Xff5731AB),
        height: 56,
        minWidth: 344,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: const Text("Continue",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontFamily: "Poppins Bold")),
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFooterText("By clicking I accept the", false),
          _buildFooterText("Terms & Conditions", true),
          _buildFooterText(" and ", false),
          _buildFooterText("Privacy Policy", true),
        ],
      ),
    );
  }

  Widget _buildFooterText(String text, bool isBold) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10,
        color: isBold ? Colors.black : const Color(0xff969191),
        fontFamily: isBold ? "Poppins Bold" : "Poppins Semi Bold",
      ),
    );
  }
}
