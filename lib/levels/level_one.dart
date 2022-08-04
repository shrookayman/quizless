import 'package:flutter/material.dart';
import 'package:session3/models/button_shape.dart';

import '../screens/score_screen.dart';

class Question {
  List questions = [
    'Which planet has the rover named Perseverance on it?',
    'What is the last planet in are solar system?',
    'What is Earths twin planet?',
    'Which planets have no moons?',
    'the smallest planet and the nearest to the sun',
    'Which planet has the most extreme temperatures?',
    'Which is the farthest planet from the Sun ?',
    'The largest planet in the Solar System is :',
    'Which planet is known as the Earth’s twin ?',
    'The Planet with maximum number of moons ?',

  ];
  List options = [
    ['Neptune', 'Mars', 'Jupiter', 'Venus'],
    ['Mars', 'Venus','Neptune' ,'Jupiter'],
    ['Venus', 'Jupiter','Mars' , 'Neptune'],
    ['Venus and Earth', 'Mars and Venus' , 'Venus and Mercury', 'Neptune and Mars'],
    ['Mercury', 'Mars' ,'Venus', 'Neptune'],
    ['Venus','Mars','Uranus','Jupiter'],
    [' Mercury',' Saturn','Neptune','Mars'],
    [' Neptune','Jupiter','Mercury','Venus'],
    [' Jupiter','Venus','Saturn',' Mars'],
    [' Mars',' Neptune','Uranus','Saturn'],


  ];

  List answer = [
    'Mars',
    'Neptune',
    'Venus',
    'Venus and Mercury',
    'Mercury',
    'Venus',
    'Neptune',
    'Jupiter',
    'Venus',
    'Saturn',
  ];
  List images = [
    'Solar system',
  ];
}

var numOfQuestion = 0;
var ques = Question();
var score = 0;
var length=ques.questions.length;



class LevelOne extends StatefulWidget {
  const LevelOne({Key? key}) : super(key: key);

  @override
  State<LevelOne> createState() => _LevelOneState();
}

class _LevelOneState extends State<LevelOne> {
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
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text('Level 1',
                        style: TextStyle(
                          color: Colors.teal[200],
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,bottom: 10),
                      child: Text(
                        '${numOfQuestion+1}/${length}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                        color: Colors.teal[200],
                          fontSize: 20,

                      )
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    ques.questions[numOfQuestion],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('images/${ques.images[0]}.jfif',
                    width: 300,
                    height: 200,
                  ),
                ),
                Column(
                  children: [
                    TextButton(onPressed: (){
                     if(ques.options[numOfQuestion][0]==ques.answer[numOfQuestion])
                       {
                         score++;
                       }
                     updateQuestion();
                    },
                        child: SelectedButton(ques.options[numOfQuestion][0],)
                    ),
                    TextButton(
                        onPressed: (){
                      if(ques.options[numOfQuestion][1]==ques.answer[numOfQuestion])
                      {
                        score++;
                      }
                      updateQuestion();
                    },
                        child: SelectedButton(ques.options[numOfQuestion][1],),

                    ),
                    TextButton(onPressed: (){
                      if(ques.options[numOfQuestion][2]==ques.answer[numOfQuestion])
                      {
                        score++;
                      }
                      updateQuestion();
                    },
                        child: SelectedButton(ques.options[numOfQuestion][2],)
                    ),
                    TextButton(onPressed: (){
                      if(ques.options[numOfQuestion][3]==ques.answer[numOfQuestion])
                      {
                        score++;
                      }
                      updateQuestion();
                    },
                        child: SelectedButton(ques.options[numOfQuestion][3],)

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: (){
                          reset();
                        }, child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 100,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.teal[200],
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text('reset',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              ),
                            ),
                          ),
                        ),),
                        TextButton(onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ScoreScreen( score)))
                              .then((value) => setState(() {}));
                        }, child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 100,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.teal[200],
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text('submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),)

                      ],
                    )

                  ],
                )
              ],
            )

      ),
    );
  }

  void reset(){
    setState((){
      Navigator.pop(context);
      numOfQuestion = 0;
      score=0;
    });

  }

  void updateQuestion() {
    setState(() {
      if (numOfQuestion == (length - 1)) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ScoreScreen( score)));
      } else {
        numOfQuestion++;
      }

    });
  }
}
