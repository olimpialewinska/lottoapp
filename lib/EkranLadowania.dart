import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottoapp/HomePage.dart';

import 'Lotto.dart';

class EkranLadowania extends StatefulWidget {
  @override
  State<EkranLadowania> createState() => _EkranLadowaniaState();
}

class _EkranLadowaniaState extends State<EkranLadowania> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff301551),
      body: Align(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('icons/lotteryapp.png')),
            ],
          )),
    );
  }

  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    String url = 'http://serwis.mobilotto.pl/mapi_v6/index.php?json=getGames';

    http.Response response = await http.get(Uri.parse(url));

    Map<String, dynamic> jsonBody = json.decode(response.body);
    Lotto l = new Lotto(jsonBody);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  lotto: l,
                )));
  }
}

class Lotto {
  String nrlosowania = "";
  String nrlosowaniaP = "";
  String nrlosowaniaM = "";
  String dataM = "";
  String data = "";
  String dataP = "";
  List<int> liczby = <int>[];
  List<int> liczbyM = <int>[];
  List<int> liczbyP = <int>[];

  Lotto(Map<String, dynamic> jsonBody) {
    nrlosowania = jsonBody['Lotto']['num_losowania'].toString();
    data = datalosowania(jsonBody['Lotto']['data_losowania'].toString());
    liczby = splitsort(jsonBody['Lotto']['numerki'].toString());

    nrlosowaniaP = jsonBody['LottoPlus']['num_losowania'].toString();
    dataP = datalosowania(jsonBody['LottoPlus']['data_losowania'].toString());
    liczbyP = splitsort(jsonBody['LottoPlus']['numerki'].toString());

    nrlosowaniaM = jsonBody['Mini']['num_losowania'].toString();
    dataM = datalosowania(jsonBody['Mini']['data_losowania'].toString());
    liczbyM = splitsort(jsonBody['Mini']['numerki'].toString());

    print(nrlosowania);
  }

  List<int> splitsort(String a) {
    var tablica = a.split(",");
    List<int> lint = tablica.map(int.parse).toList();
    lint.sort();
    return lint;
  }

  String datalosowania(String a) {
    String nowadata = "";
    for (int i = 0; i <= 10; i++) {
      nowadata = nowadata + a[i];
    }
    return nowadata;
  }
}
