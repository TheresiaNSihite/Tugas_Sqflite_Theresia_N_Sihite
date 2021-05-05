import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter penyimpanan data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('DATA KTP'),
        ),
        body: Ktp(),
      ),
    );
  }
}

class DataKtp{
  String nama;
  String nik;
  String ttl;
  String alamat;
  String agama;
  String golongandarah;
  String pekerjaan;
  
  DataKtp({this.nama, this.nik, this.alamat, this.ttl, this.agama, this.golongandarah, this.pekerjaan});
  
}

// class KTP
class Ktp extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Ktp> {
  //deklarasi variabel
  final txtnama = TextEditingController();
  final txtnik = TextEditingController();
  final txtttl = TextEditingController();
  final txtalamat = TextEditingController();
  final txtagama = TextEditingController();
  final txtgolongandarah = TextEditingController();
  final txtpekerjaan = TextEditingController();

  List<Widget> data = [];

  onTambah() {
    setState(() {
       data.add(ListTile(leading: Text(txtnama.text)));
       data.add(ListTile(leading: Text(txtnik.text)));
       data.add(ListTile(leading: Text(txtttl.text)));
       data.add(ListTile(leading: Text(txtalamat.text))); 
       data.add(ListTile(leading: Text(txtagama.text)));
       data.add(ListTile(leading: Text(txtgolongandarah.text))); 
       data.add(ListTile(leading: Text(txtpekerjaan.text)));
      txtnik.clear();
      txtnama.clear();
      txtalamat.clear();
      txtttl.clear();
      txtagama.clear();
      txtgolongandarah.clear();
      txtpekerjaan.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               TextField(
                controller: txtnama,
                decoration: InputDecoration(hintText: 'Nama Lengkap'),
              ),
              TextField(
                controller: txtnik,
                decoration: InputDecoration(hintText: 'Nomor NIK'),
              ),
              TextField(
                controller: txtttl,
                decoration: InputDecoration(hintText: 'Tempat/TglLahir'),
              ),
              TextField(
                controller: txtalamat,
                decoration: InputDecoration(hintText: 'Alamat'),
              ),
              TextField(
                controller: txtagama,
                decoration: InputDecoration(hintText: 'Agama'),
              ),
              TextField(
                controller: txtgolongandarah,
                decoration: InputDecoration(hintText: 'Golongan Darah'),
              ),
              TextField(
                controller: txtpekerjaan,
                decoration: InputDecoration(hintText: 'Pekerjaan'),
              ),
              Divider(height: 5.0),
              ElevatedButton(child: Text("SIMPAN"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}