import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dashboard_screen.dart';
import 'data_variables.dart';

class TransferMoneyConfirmation extends StatelessWidget {
  const TransferMoneyConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Transfer Money Confirmation'),
          automaticallyImplyLeading: false,
        ),
        resizeToAvoidBottomInset: false,
        body: Stack(children: <Widget>[
          Positioned(
              top: -5,
              left: 20,
              height: 710,
              width: 375,
              child: Card(
                  color: const Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        bottom: 70,
                        height: 50,
                        width: 160,
                        left: 100,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF2196F3)),
                                textStyle: MaterialStateProperty.all(
                                  const TextStyle(fontSize: 20),
                                )),
                            onPressed: () {
                              if (transferConfirmation() == 1) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DashBoard()));
                              }
                            },
                            child: const Text(
                              'Confirm',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ))),
                    const Positioned(
                        top: 25,
                        left: 100,
                        child: Text(
                          'Digital Receipt',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        top: 85,
                        left: 75,
                        child: Text(
                          '*Transferred From:\nSavings Account: 1234 6198 8603 ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 145,
                        left: 80,
                        child: Text(
                          '*Transferred Amount:\nPHP ' +
                              moneyData(amount.toString()) +
                              '.00',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        top: 205,
                        left: 80,
                        child: Text(
                          '*Transaction Fee:\nPHP 0.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 265,
                        left: 80,
                        child: Text(
                          '*Total Amount Deducted:\nPHP ' +
                              moneyData(amount.toString()) +
                              '.00',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        top: 325,
                        left: 80,
                        child: Text(
                          '*Transfer Service:\nWestern Union',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 385,
                        left: 80,
                        child: Text(
                          '*Transferred To:\nAccount Number: ' + account,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 445,
                        left: 80,
                        child: Text(
                          '*Date of Transfer:\n' +
                              date +
                              '\n\n*Confirmation Number:\n32559619',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ]))),
        ]));
  }
}
