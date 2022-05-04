// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      home: buildSafeArea()
    );
  }

  SafeArea buildSafeArea() {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter')
        ),
        body: HomePage()
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
            children: [
              Text('hihi'),
              Row(
                children: [
                  FlatButton(
                    child: Text('red'),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {}, // tạm thời khi click vào button sẽ chưa có tác dụng gì
                  ),
                  FlatButton(
                    child: Text('yellow'),
                    color: Colors.yellow,
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text('green'),
                    color: Colors.green,

                    onPressed: () {},
                  )
                ],
              )
            ]
        )
    );
  }
}

