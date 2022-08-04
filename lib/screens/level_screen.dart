import 'package:session3/models/button_shape.dart';

import '../levels/level_one.dart';
import 'main_screen.dart';
import 'package:flutter/material.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.indigo.shade900, Colors.indigo]),
        ),
        child:
              Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const  MainScreen()),
                              );
                             // Navigator.pop(context);
                            }),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        'Levels',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),

                  // buttons level

                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {});
                            // to go to level one
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LevelOne()),
                            );
                          },
                          child: ButtonShape(
                              numOfLevel: 'Level 1',
                              buttonColor: Colors.teal.shade200),
                        ),
                        ButtonShape(
                              numOfLevel: 'Level 2',
                              buttonColor: Colors.indigo.shade200),
                        ButtonShape(
                            numOfLevel: 'Level 3',
                            buttonColor: Colors.indigo.shade200),
                        ButtonShape(
                            numOfLevel: 'Level 4',
                            buttonColor: Colors.teal.shade200),
                        ButtonShape(
                            numOfLevel: 'Level 5',
                            buttonColor: Colors.teal.shade200),
                        ButtonShape(
                            numOfLevel: 'Level 6',
                            buttonColor: Colors.indigo.shade200),
                        ButtonShape(
                            numOfLevel: 'Level 7',
                            buttonColor: Colors.indigo.shade200),
                        ButtonShape(
                            numOfLevel: 'Level 8',
                            buttonColor: Colors.teal.shade200),
                        ButtonShape(
                            numOfLevel: 'Level 9',
                            buttonColor: Colors.teal.shade200),
                        ButtonShape(
                            numOfLevel: 'Level 10',
                            buttonColor: Colors.indigo.shade200),
                      ],
                    ),
                  ),
                ],
              ),

      ),
    );
  }
}
