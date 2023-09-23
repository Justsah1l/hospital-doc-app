import 'dart:async';

import 'package:doc/dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool showwid = false;

  void _timer() {
    int timeleft = 5;
    showwid = true;
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeleft > 0) {
        setState(() {
          timeleft--;
        });
      } else {
        setState(() {
          showwid = false;
        });
        timer.cancel();
      }
    });
  }

  int indexI = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: GNav(
                padding: EdgeInsets.all(16),
                tabBackgroundColor: Colors.grey.shade800,
                curve: Curves.easeInCirc,
                backgroundColor: Colors.black,
                color: const Color.fromARGB(255, 115, 115, 115),
                gap: 5,
                activeColor: Colors.white,
                onTabChange: (index) {
                  setState(() {
                    indexI = index;
                  });
                },
                tabs: [
                  GButton(
                    icon: Icons.local_hospital,
                    text: "OPD",
                  ),
                  GButton(
                    icon: Icons.emergency,
                    text: "Emergency",
                  ),
                  GButton(
                    icon: Icons.person,
                    text: "profile",
                  ),
                ]),
          ),
        ),
        appBar: AppBar(
          title: Text("appbar"),
          centerTitle: true,
        ),
        body: showwid
            ? Dialogwid()
            : Column(
                children: [
                  Text(
                    " adadadadadadd ",
                    style: TextStyle(fontSize: 30),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _timer();
                      },
                      child: Text("press"))
                ],
              ));
  }
}
