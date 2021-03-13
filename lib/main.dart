import 'package:flutter/material.dart';
import 'package:people_counter_app/app/widgets/home_widget.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador de Pessoas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    ));
