import 'dart:developer';

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  @override
  Widget build(BuildContext context) {
    print('build function ran');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose Location'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
          });
        },
        child: const Text('counter is'),
      ),
    );
  }
}
