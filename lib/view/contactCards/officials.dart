import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:vistiq/view/mainPage.dart';

class Official extends StatelessWidget {
  const Official({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Officials",
        ),
        centerTitle: true,
        elevation: 50,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        toolbarHeight: 60,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BottomNav()));
              },
              icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedHome01, color: Colors.black))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, index) {
              return _contactCard();
            }),
      ),
    );
  }
}

Widget _contactCard() {
  return const Card(
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        spacing: 20,
        children: [
          CircleAvatar(
            radius: 20,
            child: Icon(
              Icons.person_3_outlined,
            ),
          ),
          Column(
            children: [Text("Name (Position)"), Text("+91 9011223344")],
          )
        ],
      ),
    ),
  );
}
