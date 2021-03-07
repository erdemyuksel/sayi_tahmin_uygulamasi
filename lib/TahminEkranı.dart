import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayi_tahmin_etme_uygulamasi/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  @override
  _TahminEkraniState createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  int tahminHakki = 5;
  var tfTahmin = TextEditingController();
  int rastgeleSayi = 0;
  String tavsiye = "";

  @override
  void initState() {
    super.initState();
    rastgeleSayi = Random().nextInt(99);
    print("Rastgele Sayı = $rastgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TAHMİN EKRANI",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 12,
        centerTitle: true,
        backgroundColor: Colors.orange,
        shadowColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "KALAN TAHMİN HAKKI = $tahminHakki",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "YARDIM: $tavsiye",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 2,
                decoration: InputDecoration(
                  hintText: "Tahmininizi Giriniz",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[400],
                    decorationThickness: 5,
                    decorationColor: Colors.orange,
                  ),
                  labelText: "Tahmin",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 5,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    gapPadding: 4,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 175,
              child: RaisedButton(
                color: Colors.orange,
                elevation: 8,
                child: Text(
                  "TAHMİN ET",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                padding: EdgeInsets.all(15),
                onPressed: () {
                  setState(
                    () {
                      tahminHakki = tahminHakki - 1;
                    },
                  );
                  int tahmin = int.parse(tfTahmin.text);

                  if (tahmin == rastgeleSayi) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SonucEkrani(sonuc: true,),
                      ),
                    );
                  }

                  if (tahmin < rastgeleSayi) {
                    return tavsiye = "Tahmini Arttır";
                  }

                  if (tahmin > rastgeleSayi) {
                    return tavsiye = "Tahmini Azalt";
                  }

                  if (tahminHakki == 0) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SonucEkrani(sonuc: false,),
                      ),
                    );
                  }

                  tfTahmin.text = "";
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
