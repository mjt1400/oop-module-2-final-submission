import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'transfer_confirmation.dart';
import 'data_variables.dart';
import 'card_display.dart';

final inputAmount = TextEditingController();
final accountNumber = TextEditingController();

class TransferMoney extends StatelessWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transfer Money'),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(children: <Widget>[
        Container(),
        Positioned(
          height: 60,
          width: 150,
          bottom: 70,
          left: 140,
          child: ElevatedButton(
              onPressed: () {
                if (validate() == 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TransferMoneyConfirmation()));
                } else if (validate() == 2) {
                  final e2 = SnackBar(
                      backgroundColor: const Color(0xFFD50000),
                      content: const Text(
                        'Amount Should Be Not Less Than PHP 200',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(e2);
                } else if (validate() == 3) {
                  final e3 = SnackBar(
                      backgroundColor: const Color(0xFFD50000),
                      content: const Text(
                        'Amount To Be Transferred Is More Than The Current Savings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(e3);
                } else if (validate() == 0) {
                  final e1 = SnackBar(
                      backgroundColor: const Color(0xFFD50000),
                      content: const Text(
                        'Account Number is Empty',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(e1);
                } else if (validate() == 4) {
                  final e4 = SnackBar(
                      backgroundColor: const Color(0xFFD50000),
                      content: const Text(
                        'Account Number is Incorrect!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(e4);
                } else {
                  final e5 = SnackBar(
                      backgroundColor: const Color(0xFFD50000),
                      content: const Text(
                        'Please Enter Amount to Transfer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(e5);
                }
              },
              child: const Text(
                'Confirm',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF2196F3)),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 15),
                  ))),
        ),
        const Positioned(
            bottom: 310,
            left: 25,
            child: Text(
              'Please Input A 12 Digit Account Number',
              style: TextStyle(
                fontSize: 15,
                color: Colors.red,
              ),
            )),
        const Positioned(
            bottom: 210,
            left: 25,
            child: Text(
              'Please Input A Minimum Amount Of PHP 200',
              style: TextStyle(
                fontSize: 15,
                color: Colors.red,
              ),
            )),
        Positioned(
            top: 280,
            left: 25,
            child: Text(
              'PHP  ' + moneyData(transaction.toString()) + '.00',
              style: const TextStyle(fontSize: 30, color: Colors.white),
            )),
        const Positioned(
            top: 250,
            left: 20,
            child: Text(
              'Previous Transaction:',
              style: TextStyle(fontSize: 25, color: Colors.white),
            )),
        Padding(
          padding: const EdgeInsets.only(
            top: 350,
            left: 15,
            right: 15,
          ),
          child: TextFormField(
            obscureText: true,
            controller: accountNumber,
            style: const TextStyle(color: Color(0xFFFFFFFF)),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
                fillColor: const Color(0xFFFFFFFF),
                border: const OutlineInputBorder(),
                labelText: 'Enter Account Number'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 450, left: 15, right: 15),
          child: TextFormField(
            controller: inputAmount,
            style: const TextStyle(color: Color(0xFFFFFFFF)),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
                fillColor: const Color(0xFFFFFFFF),
                border: const OutlineInputBorder(),
                labelText: 'Enter Amount to Transfer'),
          ),
        ),
        Positioned(
            top: 35, left: 30, height: 200, width: 350, child: cardDisplay()),
        Positioned(
            top: 190,
            left: 55,
            child: Text(
              'PHP ' + moneyData(savingsAccount.toString()),
              style: const TextStyle(fontSize: 25, color: Colors.white),
            )),
        const Positioned(
            top: 160,
            left: 50,
            child: Text(
              'Balance:',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellowAccent,
                  fontWeight: FontWeight.bold),
            )),
        const Positioned(
            top: 30,
            left: 240,
            height: 100,
            width: 125,
            child: Image(
              image: AssetImage('assets/images/visa.png'),
            )),
        const Positioned(
            top: 150,
            left: 240,
            height: 100,
            width: 125,
            child: Image(
              image: AssetImage('assets/images/bank logo.png'),
            )),
      ]),
    );
  }
}
