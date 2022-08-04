import 'package:flutter/material.dart';
import 'package:session3/screens/level_screen.dart';

import '../models/background_style.dart';

class ScoreScreen extends StatelessWidget {
  final int score;

  ScoreScreen(this.score);



  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo.shade900, Colors.indigo])
          ),
          child:  Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Result',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.teal[200],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Total correct answers ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    '$score out of 10 Questions',
                    style:  TextStyle(
                        color: Colors.teal[200],
                        fontSize: 17.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.indigo.shade300,

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                             Text(
                              'Your final score is',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Container(
                                width: 150,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Colors.teal.shade200,
                                  shape: BoxShape.circle,

                                ),
                                child: Center(
                                  child: Text(
                                    '$score',
                                    style:  TextStyle(
                                        color: Colors.white,
                                        fontSize: 30.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LevelScreen()),
                          );
                        },
                            child: Container(
                              width: 100,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.teal[200],
                                borderRadius: BorderRadius.circular(15)

                              ),
                              child: Center(
                                child: Text('Back',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  )

                ],

              ),

            ],

          ),

        ),


      ),

    );
  }
}

