import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:vistiq/view/contactCards/officials.dart';
import 'package:vistiq/view/mainPage.dart';

class Directory extends StatefulWidget {
  const Directory({super.key});

  @override
  State<Directory> createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Directory",
        ),
        centerTitle: true,
        elevation: 50,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BottomNav()));
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        toolbarHeight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 10,
          children: [
            directoryButton(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Official()));
            }, HugeIcons.strokeRoundedManager, "Officials"),
            directoryButton(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Official()));
            }, HugeIcons.strokeRoundedWork, "Staffs"),
            directoryButton(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Official()));
            }, HugeIcons.strokeRoundedHome10, "Residents")
          ],
        ),
      ),
    );
  }
}

Widget directoryButton(Function() onTap, IconData icon, String label) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 80,
      width: 384,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(
                0.2,
                0,
              ),
              blurRadius: 10.0,
              spreadRadius: 5,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HugeIcon(
              icon: icon,
              color: Colors.black,
              size: 24,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(Icons.navigate_next_outlined)
          ],
        ),
      ),
    ),
  );
}
