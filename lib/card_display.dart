import 'package:flutter/material.dart';

Card cardDisplay() => Card(
      color: const Color(0xFF424242),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: const <Widget>[
          Positioned(
              top: 75,
              left: 20,
              child: Text(
                '1234 6198 8603',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 15,
              left: 15,
              child: Text(
                'Card Holder Name:',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 45,
              left: 15,
              child: Text(
                'Admin',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
    );
