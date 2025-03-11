import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vistiq/view/homeScreen.dart';

class RegisterPackageDone extends StatelessWidget {
  const RegisterPackageDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie/Animation - 1741107925424.json",
                width: 250, animate: true, repeat: false, reverse: false),
            const SizedBox(
              width: 250,
              child: Text(
                "Package Delivery Registered successfully",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "You will be notified when package arrival.",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTextButton(() {}, "Register a new package"),
                _buildTextButton(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Homescreen()));
                }, "Back to home"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextButton(Function() onTap, String label) {
    return TextButton(
      onPressed: onTap,
      child: SizedBox(
        width: 100,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xff3661CD),
          ),
        ),
      ),
    );
  }
}
