import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamAPoint = 0;

  int TeamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Team A',
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'Pacifico',
                          )),
                      Text(
                        '$TeamAPoint',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              TeamAPoint++;
                            },
                          );
                        },
                        child: Text(
                          'add 1 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              TeamAPoint += 2;
                            },
                          );
                        },
                        child: Text(
                          'add 2 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              TeamAPoint += 3;
                            },
                          );
                        },
                        child: Text(
                          'add 3 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 10,
                    endIndent: 23,
                    color: Color(0xffCFCFCF),
                    thickness: 3,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      Text(
                        '$TeamBPoint',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              TeamBPoint++;
                            },
                          );
                        },
                        child: Text(
                          'add 1 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              TeamBPoint += 2;
                            },
                          );
                        },
                        child: Text(
                          'add 2 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              TeamBPoint += 3;
                            },
                          );
                        },
                        child: Text(
                          'add 3 point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  TeamAPoint = 0;
                  TeamBPoint = 0;
                });
              },
              child: Text(
                'RESET',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
