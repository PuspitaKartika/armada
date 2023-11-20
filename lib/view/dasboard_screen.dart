import 'package:flutter/material.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  int currenIndex = 0;
  List bodyScreen = [
    const Center(child: Text("home")),
    const Center(child: Text("screen 1")),
    const Center(child: Text("screen 2")),
    const Center(child: Text("screen 3")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currenIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: currenIndex == 0 ? Colors.white : Colors.transparent,
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.home,
                  color: currenIndex == 0 ? Colors.black : Colors.white,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color:
                          currenIndex == 1 ? Colors.white : Colors.transparent,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.note_add,
                    color: currenIndex == 1 ? Colors.black : Colors.white,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color:
                          currenIndex == 2 ? Colors.white : Colors.transparent,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.storage_outlined,
                    color: currenIndex == 2 ? Colors.black : Colors.white,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color:
                          currenIndex == 3 ? Colors.white : Colors.transparent,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    color: currenIndex == 3 ? Colors.black : Colors.white,
                  ),
                ),
                label: ""),
          ]),
      body: bodyScreen[currenIndex],
    );
  }
}
