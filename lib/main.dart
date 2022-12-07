import 'package:flutter/material.dart';
import 'package:navti3f/views/home_page.dart';
import 'package:navti3f/views/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
