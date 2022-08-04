import 'package:flutter/material.dart';

import 'level_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xFF192841),
    //  backgroundColor: Color(0xFF311E55),
    //  backgroundColor: Color(0xFF1E022F),

    body:Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.indigo.shade900, Colors.indigo]),
      ),
      child:    Column(

        children: [
          Padding(
            padding: EdgeInsets.only(top: 120, bottom: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  'Quizless',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo.shade200,
                  ),
                )
              ],
            ),

          ),
          Icon(Icons.quiz_outlined,
            color: Colors.teal.shade200,
            size: 50,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Let\'s Play!',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Play now and Level up',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextButton(
                      onPressed: () {
                        setState(() {
                        });
                        //  go to level screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const  LevelScreen()),
                        );},

                      child: Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          color:  Colors.teal[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            'Play now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                  ),

                ],
              ))
        ],
      ),



    ),

    );
  }
}
