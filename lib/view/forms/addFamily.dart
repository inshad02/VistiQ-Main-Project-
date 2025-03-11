import 'package:flutter/material.dart';
import 'package:vistiq/utils/formWidgets.dart';
import 'package:vistiq/view/mainPage.dart';
import 'package:vistiq/view/successScreens/addfamily.dart';

class AddFamilyForm extends StatefulWidget {
  const AddFamilyForm({super.key});

  @override
  State<AddFamilyForm> createState() => _AddFamilyFormState();
}

class _AddFamilyFormState extends State<AddFamilyForm> {
  String gender = "Select";
  String relation = "Select";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Family",
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
        child: SafeArea(
          child: Column(
            spacing: 24,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
              customTextField("Name"),
              mobileNoField("Phone Number"),
              customTextField("Email Address"),
              DropDown(
                  title: "Gender",
                  selectedValue: gender,
                  items: const ["Select", "Male", "Female"],
                  onChanged: (newValue) {
                    setState(() {
                      gender = newValue!;
                    });
                  }),
              DropDown(
                  title: "Relation",
                  selectedValue: relation,
                  items: const [
                    "Select",
                    "Father",
                    "Mother",
                    "Sibling",
                    "Grand Parent",
                    "Others"
                  ],
                  onChanged: (newValue) {
                    setState(() {
                      relation = newValue!;
                    });
                  }),
              const Spacer(),
              buttons(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BottomNav()));
              }, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AddFamilyDone()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
