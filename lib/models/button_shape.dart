import 'package:flutter/material.dart';
import 'package:session3/models/background_style.dart';


class ButtonShape  extends StatelessWidget {
   Color buttonColor;
   String  numOfLevel;
   ButtonShape({required this.numOfLevel, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25.0,bottom: 30),
      child:
          Row(
            children: [
              Container(
                  width: 130,
                  height: 120,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.all( Radius.circular(20)),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(numOfLevel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
              ),
            ],
          ),
    );
  }
}





class LockButton  extends StatelessWidget {
  Color buttonColor;
  String  numOfLevel;
  LockButton({required this.numOfLevel, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25.0,bottom: 30),
      child:
      Row(
        children: [
          Container(
            width: 130,
            height: 120,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all( Radius.circular(20)),

            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),

              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(numOfLevel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                 // Icon(Icons.lock)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}










class SelectedButton extends StatelessWidget {
  var choice;
  SelectedButton(this.choice);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.teal.shade200),
    ),
      child: Center(
        child: Text(
          choice,
          style: TextStyle(
              color: Colors.white,
             //  fontFamily: 'DaysOne-Regular',
          ),
        ),
      ),
      width: 300,
      height: 40,
    );
  }
}


