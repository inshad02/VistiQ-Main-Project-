import 'package:flutter/material.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro1State();
}

class _Intro1State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/PAckage.jpg"),
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
                      "Never Miss a Package",
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
                    "Get notified and track your package deliveries in real-time.",
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
