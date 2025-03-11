import 'package:flutter/material.dart';
import 'package:vistiq/utils/formWidgets.dart';
import 'package:vistiq/view/mainPage.dart';
import 'package:vistiq/view/successScreens/addVistor.dart';

class AddVisitorForm extends StatefulWidget {
  const AddVisitorForm({super.key});

  @override
  State<AddVisitorForm> createState() => _AddVisitorFformState();
}

class _AddVisitorFformState extends State<AddVisitorForm> {
  String _relation = "select";
  final datecontroller = TextEditingController();
  final timecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Visitor",
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
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextField("Name"),
            mobileNoField("Phone Number(Optional)"),
            customTextField("Vehicle Number(Optional)"),
            DropDown(
                title: "Relation(If any)",
                selectedValue: _relation,
                items: const [
                  "select",
                  "Father",
                  "Mother",
                  "Son",
                  "Daughter",
                  "Sibling",
                  "Friend",
                  "Relative",
                  "Other"
                ],
                onChanged: (newValue) {
                  setState(() {
                    _relation = newValue!;
                  });
                }),
            DatePickerTextField(title: "Date", controller: datecontroller),
            TimePickerTextField(title: "Time", controller: timecontroller),
            const Spacer(),
            buttons(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BottomNav()));
            }, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AddVisitorDone()));
            })
          ],
        ),
      ),
    );
  }
}
