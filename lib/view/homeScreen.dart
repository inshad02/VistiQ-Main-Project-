import 'package:flutter/material.dart';

import 'package:vistiq/utils/homePageWidgets.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "Emergency Button",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        icon: const Icon(
          Icons.emergency,
          color: Colors.white,
        ),
        tooltip: "Don't worry :)",
        elevation: 3,
        backgroundColor: const Color(0xffFF5353),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            appBar(),
            const SizedBox(
              height: 30,
            ),
            ads(),
            const SizedBox(
              height: 20,
            ),
            familyDetails(context),
            const SizedBox(
              height: 20,
            ),
            services(context),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
