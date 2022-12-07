import 'package:flutter/material.dart';
import 'package:navti3f/controller/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final teks = ModalRoute.of(context)!.settings.arguments as Item;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ini Adalah Item Page'),
        ),
        body: Text("Nama : " +
            teks.nama +
            "\nAlamat : " +
            teks.alamat +
            "\nUmur : " +
            teks.umur.toString()),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}
