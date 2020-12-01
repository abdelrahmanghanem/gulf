



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gulftech/src/Model/property.dart';
import 'package:gulftech/src/Repository/property_repository.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class PropertyController extends ControllerMVC{
  List<Property> properties = <Property>[];

  GlobalKey<ScaffoldState> scaffoldKey;

  PropertyController(){
    this.scaffoldKey = GlobalKey<ScaffoldState>();
    listenForProperties();
  }
  void listenForProperties({String message}) async {
    final Stream<Property> stream = await getProperties();
    stream.listen((Property _property) {
      setState(() {
        properties.add(_property);
      });
    }, onError: (a) {
      print(a);
    }, onDone: () {
    });
  }

}