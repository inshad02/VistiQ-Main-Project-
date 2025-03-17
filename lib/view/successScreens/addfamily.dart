import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vistiq/utils/formWidgets.dart';
import 'package:vistiq/view/forms/addFamily.dart';
import 'package:vistiq/view/mainPage.dart';

class AddFamilyDone extends StatelessWidget {
  const AddFamilyDone({super.key});

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
              width: 200,
              child: Text(
                "Family member added successfully",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AddFamilyForm()));
                }, "Add a new member"),
                buildTextButton(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const BottomNav()));
                }, "Back to home"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
