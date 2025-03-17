import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vistiq/view/forms/addFamily.dart';
import 'package:vistiq/view/forms/addVisitor.dart';
import 'package:vistiq/view/forms/complaints.dart';
import 'package:vistiq/view/forms/packageReg.dart';
import 'package:vistiq/view/Directory.dart';

Widget appBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      spacing: 10,
      children: [
        Image.asset(
          "assets/icons/residential-area.png",
          height: 36,
        ),
        flatDetails(),
        const Spacer(),
        const Icon(
          Icons.search,
          size: 38,
        ),
        const Icon(
          Icons.notifications_none_rounded,
          size: 38,
        )
      ],
    ),
  );
}

Widget flatDetails() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "B-1",
        style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 20, letterSpacing: 0),
      ),
      Text("Inshad")
    ],
  );
}

Widget ads() {
  final imagePaths = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPy6FcmILTTRa0tZnNKf54n_vFyEKbwrrACg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPy6FcmILTTRa0tZnNKf54n_vFyEKbwrrACg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPy6FcmILTTRa0tZnNKf54n_vFyEKbwrrACg&s"
  ];

  final myItems = List.generate(
      3,
      (index) => Container(
            height: 70,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(imagePaths[index]),
                fit: BoxFit.cover,
              ),
            ),
          ));

  int myCurentIndex = 0;

  return Column(
    spacing: 15,
    children: [
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 2.0,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 2),
          onPageChanged: (index, reason) {
            myCurentIndex = index;
          },
        ),
        items: myItems,
      ),
      AnimatedSmoothIndicator(
        activeIndex: myCurentIndex,
        count: myItems.length,
        effect: const WormEffect(dotHeight: 8, dotWidth: 8),
        onDotClicked: (index) {
          myCurentIndex = index;
        },
      )
    ],
  );
}

Widget familyDetails(BuildContext context) {
  Widget buildFamilyButton(Function()? onPress, IconData icon, String label) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 167,
        height: 68,
        decoration: BoxDecoration(
          color: const Color(0xff5731AB),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            Text(label,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14)),
          ],
        ),
      ),
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Family Details",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        Row(
          children: [
            buildFamilyButton(
              () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AddFamilyForm()));
              },
              Icons.person_add,
              "Add Family",
            ),
            const Spacer(),
            buildFamilyButton(() {}, Icons.remove_red_eye, "View Family"),
          ],
        ),
      ],
    ),
  );
}

Widget services(BuildContext context) {
  Widget serviceButtons(Function()? onTap, String image, String label) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 82,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffDDDDDD)),
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 25,
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        const Text("Services",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
        Row(
          children: [
            serviceButtons(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AddVisitorForm()));
            }, "assets/icons/visitor.png", "Add Visitor"),
            const Spacer(),
            serviceButtons(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PackageRegForm()));
            }, "assets/icons/truck-box.png", "Register Package"),
            const Spacer(),
            serviceButtons(() {},
                "assets/icons/megaphone-announcement-leader.png", "Updates"),
          ],
        ),
        Row(
          children: [
            serviceButtons(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Directory()));
            }, "assets/icons/address-book.png", "Directory"),
            const Spacer(),
            serviceButtons(() {}, "assets/icons/vote.png", "Voting"),
            const Spacer(),
            serviceButtons(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ComplaintsForm()));
            }, "assets/icons/satisfaction-bar.png", "Complaints & feedbacks"),
          ],
        )
      ],
    ),
  );
}
