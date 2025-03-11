import 'package:flutter/material.dart';
import 'package:vistiq/view/homeScreen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 1;
  final List<Widget> _pages = [
    const Homescreen(),
    const Homescreen(),
    const Homescreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 82,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, -1),
              blurRadius: 10.0,
              spreadRadius: 0,
            ),
          ],
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            onTap: _onItemTapped,
            iconSize: 20,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Center(
                    child: Image.asset(
                      "assets/icons/meeting.png",
                      color: _selectedIndex == 0
                          ? const Color(0xff5731AB)
                          : const Color(0xff969191),
                      height: _selectedIndex == 0 ? 24 : 21,
                    ),
                  ),
                  label: "Chat"),
              BottomNavigationBarItem(
                  icon: Center(
                    child: Image.asset(
                      "assets/icons/house-chimney.png",
                      color: _selectedIndex == 1
                          ? const Color(0xff5731AB)
                          : const Color(0xff969191),
                      height: _selectedIndex == 1 ? 24 : 21,
                    ),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Center(
                    child: Image.asset(
                      "assets/icons/user.png",
                      color: _selectedIndex == 2
                          ? const Color(0xff5731AB)
                          : const Color(0xff969191),
                      height: _selectedIndex == 2 ? 24 : 21,
                    ),
                  ),
                  label: "Profile")
            ]),
      ),
    );
  }
}
