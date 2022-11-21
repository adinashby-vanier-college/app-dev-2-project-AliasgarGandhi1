import 'package:flutter/material.dart';
import 'package:mtl_chassures/my_flutter_app_icons.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white70,
    iconTheme: IconThemeData(size: 30),
    actions: <Widget>[
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
            ),
            Text(
              'HOME',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 19.0),
            ),
            IconButton(
              icon: Icon(MyFlutterApp.filter, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  );
}
