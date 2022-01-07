import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bedtime_stories_app/HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GetStarted(),
  ));
}

class GetStarted extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: Container(
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/bg_wave.svg',
              fit: BoxFit.cover,
              alignment: AlignmentDirectional.topStart,
            ),
            Center(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/bg_clouds.svg',
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        "Welcome to Bedtime stories",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Explore the new king of sleep, it uses visualisation to create perfect conditions for refreshing sleep",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Stack(children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            'assets/bg_birds.svg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(width: 400, height: 50),
                          child: ElevatedButton(
                            child: Text(
                              "Get Started".toUpperCase(),
                              style: TextStyle(fontSize: 14),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF8E97FD)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.deepPurpleAccent))),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
