import 'package:flutter/material.dart';
import 'package:vistiq/utils/formWidgets.dart';
import 'package:vistiq/view/mainPage.dart';
import 'package:vistiq/view/successScreens/complaintFeedback.dart';

class ComplaintsForm extends StatefulWidget {
  const ComplaintsForm({super.key});

  @override
  State<ComplaintsForm> createState() => _ComplaintsFormState();
}

class _ComplaintsFormState extends State<ComplaintsForm> {
  String subject = "Select";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Complaints & Feedbacks",
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
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          spacing: 30,
          children: [
            DropDown(
                title: "Subject",
                selectedValue: subject,
                items: const [
                  "Select",
                  "Water",
                  "Cleanlinesss",
                  "Electricity",
                  'Others'
                ],
                onChanged: (newVal) {
                  setState(() {
                    subject = newVal!;
                  });
                }),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(
                  "Type your complaints and feedbacks here.",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            const Spacer(),
            buttons(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BottomNav()));
            }, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const FeedbackDone()));
            })
          ],
        ),
      ),
    );
  }
}
