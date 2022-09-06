import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EJ extends StatefulWidget {
  @override
  State<EJ> createState() => _EJState();
}

class _EJState extends State<EJ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Center(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text("08-07-2022, EuroJackpot:",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              height: 1.2))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 18.0,
                        child: Center(
                          child: Container(
                              child: Text("3",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 18.0,
                        child: Center(
                          child: Container(
                              child: Text("3",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 18.0,
                        child: Center(
                          child: Container(
                              child: Text("3",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 18.0,
                        child: Center(
                          child: Container(
                              child: Text("3",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 18.0,
                        child: Center(
                          child: Container(
                              child: Text("3",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 18.0,
                        child: Center(
                          child: Container(
                              child: Text("3",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 18.0,
                        child: Center(
                          child: Container(
                              child: Text("3",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ))
          ],
        ));
  }
}
