import 'package:flutter/material.dart';
import 'about_us.dart';
import 'authentication_screen.dart';
import 'transfer_money.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dashboard'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            children: [
              Column(children: [
                Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bank teller.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const Text(
                  "Welcome back Admin!",
                  style: TextStyle(fontSize: 35),
                )
              ]),
              Container(
                width: 250,
                height: 100,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransferMoney()),
                      );
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Transfer Money",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          Text(
                            "(View Account Balance Here)",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        ]),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: const BorderSide(color: Colors.yellow))),
                    )),
              ),
              Container(
                  width: 250,
                  height: 100,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutUs()),
                        );
                      },
                      child: const Text("About Us",
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: const BorderSide(color: Colors.yellow))),
                      ))),
              Container(
                  width: 250,
                  height: 100,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AuthenticationScreen()),
                        );
                      },
                      child: const Text("Log Out",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: const BorderSide(color: Colors.yellow))),
                      ))),
            ],
          ),
        ));
  }
}
