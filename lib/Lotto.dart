import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EkranLadowania.dart';


class LottoScreen extends StatefulWidget {
  LottoScreen({required this.lotto});

  final Lotto lotto;
  @override
  State<LottoScreen> createState() => _LottoScreenState();
}
class _LottoScreenState extends State<LottoScreen> {
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
                  child: Text(widget.lotto.data + " Lotto:",
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
                        radius: 20.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczby[0].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 20.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczby[1].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 20.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczby[2].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 20.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczby[3].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 20.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczby[4].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 20.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczby[5].toString(),
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
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(widget.lotto.dataP+" Lotto Plus:",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              height: 1.2))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 15.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczbyP[0].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 15.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczbyP[1].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 15.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczbyP[2].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 15.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczbyP[3].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 15.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczbyP[4].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 15.0,
                        child: Center(
                          child: Container(
                              child: Text(widget.lotto.liczbyP[5].toString(),
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          height: 1.2)))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Divider(height: 1,thickness: 1,),

              ],
            ))
          ],
        )
    );
  }
}
