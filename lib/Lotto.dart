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
                Padding(padding: EdgeInsets.only(top: 55),
                  child: Text(widget.lotto.data + " Lotto:",
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
                      yellow(widget.lotto.liczby[0]),
                      const Padding(padding: EdgeInsets.only(right: 15)),
                      yellow(widget.lotto.liczby[1]),
                      const Padding(padding: EdgeInsets.only(right: 15)),
                      yellow(widget.lotto.liczby[2]),
                      const Padding(padding: EdgeInsets.only(right: 15)),
                      yellow(widget.lotto.liczby[3]),
                      const Padding(padding: EdgeInsets.only(right: 15)),
                      yellow(widget.lotto.liczby[4]),
                      const Padding(padding: EdgeInsets.only(right: 15)),
                      yellow(widget.lotto.liczby[5]),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 15),
                  child: Text("${widget.lotto.dataP} Lotto Plus:",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 1.2))),
                ),
                Padding(padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      blue(widget.lotto.liczbyP[0]),
                      const Padding(padding: EdgeInsets.only(right: 10)),
                      blue(widget.lotto.liczbyP[1]),
                      const Padding(padding: EdgeInsets.only(right: 10)),
                      blue(widget.lotto.liczbyP[2]),
                      const Padding(padding: EdgeInsets.only(right: 10)),
                      blue(widget.lotto.liczbyP[3]),
                      const Padding(padding: EdgeInsets.only(right: 10)),
                      blue(widget.lotto.liczbyP[4]),
                      const Padding(padding: EdgeInsets.only(right: 10)),
                      blue(widget.lotto.liczbyP[5]),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
                const Divider(height: 1,thickness: 1,),

              ],
            ))
          ],
        )
    );
  }
}

Container yellow(int b){
  Container a = Container();
  a=Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient:RadialGradient(
          center: Alignment.topLeft, // near the top right
          radius: 1.8,
          colors: <Color>[
            Color(0xFFFDFD11), // yellow sun
            Color(0xFFE49103), // blue sky
          ],
          stops: <double>[0.3, 1.0],
        ),
      ),
      child: CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.transparent,
          child: Text(b.toString(),
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.2)))
      )
  );
   return a;
}


Container blue(int b){
  Container a = Container();
  a=Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient:RadialGradient(
          center: Alignment.topLeft, // near the top right
          radius: 1.6,
          colors: <Color>[
                  Color(0xFF64C7F9), // yellow sun
                  Color(0xFF003CFF), // blue sky
                ],
          stops: <double>[0.4, 1.0],
        ),
      ),
      child: CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.transparent,
          child: Text(b.toString(),
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.2)))
      )
  );
  return a;
}
