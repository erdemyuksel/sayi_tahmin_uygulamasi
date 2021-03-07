import 'package:flutter/material.dart';
import 'package:sayi_tahmin_etme_uygulamasi/main.dart';

class SonucEkrani extends StatefulWidget {
  bool sonuc;

  SonucEkrani({this.sonuc});

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SONUÇ EKRANI",
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
            Icon(
              widget.sonuc ? Icons.emoji_emotions_sharp : Icons.mood_bad_sharp,
              color: Colors.black,
              size: 175,
            ),
            Text(
              widget.sonuc ? "TEBRİKLER" : "KAYBETTİNİZ",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
                fontSize: 45,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(
                    color: Colors.blueAccent,
                    blurRadius: 5,
                    offset: Offset(5, 3),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: 250,
              child: RaisedButton(
                color: Colors.orange,
                elevation: 8,
                child: Text(
                  "TEKRAR DENE",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
