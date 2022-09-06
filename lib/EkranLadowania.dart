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
              Padding(padding: EdgeInsets.only(top: 40)),
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
            builder: (context) => HomePage(lotto: l,)));
  }
}

class Lotto {
  String data ="";
  String dataP ="";
  List<String> liczby = <String>[];
  List<String> liczbyP = <String>[];



  Lotto(Map<String, dynamic> jsonBody) {
    String numerki = jsonBody['Lotto']['numerki'].toString();
    String zladata= jsonBody['Lotto']['data_losowania'].toString();
    String numerkiP = jsonBody['LottoPlus']['numerki'].toString();
    String zladataP = jsonBody['LottoPlus']['data_losowania'].toString();
    data = datalosowania(zladata);
    print(data);
    liczby= splitsort(numerki);
    print(liczby);
    liczbyP= splitsort(numerkiP);
    print(liczbyP);
    dataP = datalosowania(zladataP);

  }

  List<String> splitsort(String a){
    var tablica = a.split(",");
    tablica.sort();
    return tablica;
  }
  String datalosowania(String a){
    String nowadata="";
    for(int i=0; i<=10; i++){
      nowadata = nowadata +a[i];
    }
     return nowadata;
  }


}
