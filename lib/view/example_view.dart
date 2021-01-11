import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simple_flutter/constant/static_constant.dart';
import 'package:simple_flutter/model/Book.dart';
import 'package:simple_flutter/network/request_api.dart';

class ExampleState extends StatelessWidget {
  ExampleState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StaticConstant.titleApp,
      home: ExampleView(),
    );
  }
}


class ExampleView extends StatefulWidget {
  ExampleView({Key key}) : super(key: key);

  @override
  _ExampleViewState createState() {
    return _ExampleViewState();
  }
}

class _ExampleViewState extends State<ExampleView> {
  int volume = 0;

  @override
  void initState() {
    super.initState();
    loadVolumeBook("http");
  }

  loadVolumeBook(String keyword) async {
    try {
      var request = await RequestApi().searchVolumeKeyword(keyword);
      if(request.statusCode == 200){
        Book book = Book.fromJson(json.decode(request.body));
        setState(() {
          volume = book.totalItems;
        });
      }
    } catch (e){
      print(e);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Example App"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text("Book about http : ${volume}"),
          ),
        ),
      ),
    );
  }
}