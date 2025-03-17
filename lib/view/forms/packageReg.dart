import 'package:flutter/material.dart';
import 'package:vistiq/utils/formWidgets.dart';
import 'package:vistiq/view/mainPage.dart';
import 'package:vistiq/view/successScreens/registerPackage.dart';

class PackageRegForm extends StatefulWidget {
  const PackageRegForm({super.key});

  @override
  State<PackageRegForm> createState() => _PacakgeRegFormState();
}

class _PacakgeRegFormState extends State<PackageRegForm> {
  String payment = "Select";
  final dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Package Registration",
        ),
        centerTitle: true,
        elevation: 50,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const BottomNav()));
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        toolbarHeight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
        child: Column(
          spacing: 24,
          children: [
            customTextField("Source"),
            DropDown(
                title: "Payment Method",
                selectedValue: payment,
                items: const ["Select", "Cash On Delivery", "Card", "UPI"],
                onChanged: (newVal) {
                  setState(() {
                    payment = newVal!;
                  });
                }),
            DatePickerTextField(title: "Date", controller: dateController),
            const Spacer(),
            buttons(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BottomNav()));
            }, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const RegisterPackageDone()));
            })
          ],
        ),
      ),
    );
  }
}
