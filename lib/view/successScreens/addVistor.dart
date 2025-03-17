import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vistiq/utils/formWidgets.dart';
import 'package:vistiq/view/homeScreen.dart';

class AddVisitorDone extends StatelessWidget {
  const AddVisitorDone({super.key});

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
                "Visitor Registration successfully completed",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "You will be notified when visitor arrival.",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton(() {
                  Navigator.pop(context);
                }, "Register a new visitor"),
                buildTextButton(() {
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
}
