import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hari Kemerdekaan Republik Indonesia'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ContentDesc(),
            ContentActions(),
            ContentAbout(),
          ],
        ),
      ),
    );
  }
}

class ContentDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/b/be/Pengibaran_Bendera_Merah_Putih%2C_Peringatan_Hari_Proklamasi_Kemerdekaan_Indonesia.jpg',
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Text(
            'Hari Kemerdekaan (lengkap: Hari Kemerdekaan RI, bahasa sehari-hari: Tujuhbelasan) adalah hari libur nasional di Indonesia untuk memperingati Proklamasi Kemerdekaan Indonesia pada 17 Agustus 1945.',
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Text(
            'Setiap tahun pada tanggal 17 Agustus, rakyat Indonesia merayakan Hari Proklamasi Kemerdekaan ini dengan meriah. Mulai dari lomba panjat pinang, lomba makan kerupuk, sampai upacara militer di Istana Merdeka, seluruh bagian dari masyarakat ikut berpartisipasi dengan cara masing-masing.',
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

class ContentActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              ),
              Text('Share'),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.save),
                onPressed: () {},
              ),
              Text('Save'),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              Text('Favorite'),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.report),
                onPressed: () {},
              ),
              Text('Report'),
            ],
          ),
        ],
      ),
    );
  }
}

class ContentAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        'sumber: Wikipedia\nEudeka! Flutter Basic',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 10,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
