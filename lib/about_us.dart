import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('About Us')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 185.0,
                  width: 185.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/dev1.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                      'Mikko Jed Tan\n*Fullstack Developer\n*2nd Year B.S Information\nSystems'),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      height: 185.0,
                      width: 185.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/dev2.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Kagie Angelo Maruyama\n*Front-End Developer\n*2nd Year B.S Information\nSystems'),
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    height: 185.0,
                    width: 185.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/dev3.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'Jeshcee Jay Tabuno\n*Front-End Developer\n*2nd Year B.S Entertainment\nAnd Multimedia Computing'),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
