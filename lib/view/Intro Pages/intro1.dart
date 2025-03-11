import 'package:flutter/material.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Visitor.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    const Color(0xff5731AB).withOpacity(0.2),
                    const Color(0xff5731AB)
                  ],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  stops: const [0, 1]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 170),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      "Streamline Visitor Management",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontFamily: 'Poppins SemiBold'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    "Approve and track visitors digitally for enhanced security.",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Poppins Regular'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
