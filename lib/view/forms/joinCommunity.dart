import 'package:flutter/material.dart';

import 'package:vistiq/utils/formWidgets.dart';

class Joincommunity extends StatefulWidget {
  const Joincommunity({super.key});

  @override
  State<Joincommunity> createState() => _JoincommunityState();
}

class _JoincommunityState extends State<Joincommunity> {
  String selectedValuePosition = "Select";
  String selectedValueUserType = "Select";
  String residentialType = "Select";
  String block = "Select";
  String doorNumber = "Select";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Join Commuity form",
          ),
          centerTitle: true,
          elevation: 50,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          toolbarHeight: 60,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Profile info",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff969191)),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  customTextField("Name"),
                  const SizedBox(
                    height: 20,
                  ),
                  mobileNoField("Phone Number"),
                  const SizedBox(
                    height: 20,
                  ),
                  DropDown(
                      title: "Position",
                      selectedValue: selectedValuePosition,
                      items: const ["Select", "Owner", "Resident", "Tenant"],
                      onChanged: (newValue) {
                        setState(() {
                          selectedValuePosition = newValue!;
                        });
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  DropDown(
                      title: "User Type",
                      selectedValue: selectedValueUserType,
                      items: const ["Select", "Primary", "Secondary", "Guest"],
                      onChanged: (newValue) {
                        setState(() {
                          selectedValueUserType = newValue!;
                        });
                      })
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Community info",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff969191)),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  DropDown(
                      title: "Type",
                      selectedValue: residentialType,
                      items: const [
                        "Select",
                        "Apartment",
                        "Flat",
                        "Villa",
                        "House"
                      ],
                      onChanged: (newValue) {
                        setState(() {
                          residentialType = newValue!;
                        });
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: DropDown(
                            title: "Block",
                            selectedValue: block,
                            items: const ["Select", "A", "B", "C", "D"],
                            onChanged: (newValue) {
                              setState(() {
                                block = newValue!;
                              });
                            }),
                      ),
                      SizedBox(
                        width: 150,
                        child: DropDown(
                            title: "Door Number",
                            selectedValue: doorNumber,
                            items: const ["Select", "1", "2", "3", "4"],
                            onChanged: (newValue) {
                              setState(() {
                                doorNumber = newValue!;
                              });
                            }),
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              buttons(() {}, () {}),
            ]),
          ),
        ));
  }
}
