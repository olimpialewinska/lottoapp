import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EkranLadowania.dart';
import 'Lotto.dart';

class MiniLotto extends StatefulWidget {
  final Lotto lotto;

  MiniLotto({required this.lotto});
  @override
  State<MiniLotto> createState() => _MiniLottoState();
}

class _MiniLottoState extends State<MiniLotto> {
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
                  padding: EdgeInsets.only(top: 55),
                  child: Text( widget.lotto.dataM.toString() + " Mini Lotto:",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 17.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 1.2))),
                ),
                Padding(padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      yellow(widget.lotto.liczbyM[0]),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      yellow(widget.lotto.liczbyM[1]),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      yellow(widget.lotto.liczbyM[2]),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      yellow(widget.lotto.liczbyM[3]),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      yellow(widget.lotto.liczbyM[4]),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Divider(height: 1, thickness: 1,),
              ],
            ))
          ],
        ));
  }
}
