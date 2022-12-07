import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navti3f/controller/item.dart';

class HomePage extends StatelessWidget {
  final txt1 = TextEditingController();
  final txt2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ini Adalah Home Page'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('ISI BIODATA\n'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('NIM : '),
                  border: OutlineInputBorder(),
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                controller: txt1,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('NAMA : '),
                  border: OutlineInputBorder(),
                ),
                controller: txt2,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  txt2.text = txt1.text;
                },
                child: Text('Kirim'),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.next_plan),
          onPressed: () {
            Navigator.pushNamed(context, '/item',
                arguments: Item("Nico Ganteng", "Lamongan", 17));
          },
        ),
      ),
    );
  }
}
