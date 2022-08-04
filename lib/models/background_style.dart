import 'package:flutter/material.dart';

class BackgroundStyle extends StatelessWidget {
  BackgroundStyle();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.blue])
          ),


        ),
      ],
    );
  }
}
