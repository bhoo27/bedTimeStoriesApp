import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bedtime_stories_app/config/configurations.dart';
import 'package:bedtime_stories_app/content.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/bg_home_border.svg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: AlignmentDirectional.topStart,
            ),
            SvgPicture.asset(
              'assets/bg_moon_home.svg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: AlignmentDirectional.topStart,
            ),
            SafeArea(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Sleep Stories",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Soothing bedtime stories to help you fall \n into a deep and natural sleep",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 90,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                        color: primaryBlue,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset(
                                      categories[index]['iconPath'],
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    categories[index]['name'],
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('assets/bg_moun.png'),
                                    fit: BoxFit.fill)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listItems.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ContentScreen(index: index)));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                          color: primaryBlue,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Image.asset(
                                        listItems[index]['iconPath'],
                                        height: 100,
                                        width: 140,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    listItems[index]['name'],
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Color(0xFF03174C),
        // this will be set when a new tab is tapped
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.nights_stay_outlined),
            label: 'Sleep',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.nightlife),
            label: 'Meditate',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
