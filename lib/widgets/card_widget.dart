import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_utility/pages/util.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4,
        color: Colors.purple[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(w(35)),
        ),
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(w(35)),
          child: Container(
            height: h(580),
            width: w(950),
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  Positioned(
                    right: w(-295),
                    top: h(-180),
                    child: Container(
                      height: w(800),
                      width: w(800),
                      decoration: BoxDecoration(
                          gradient: RadialGradient(
                              colors: [
                                Colors.purple[900],
                                Colors.redAccent,
                              ],
                              focal: Alignment(1, 0),
                              stops: [0.0, 1]),
                          borderRadius: BorderRadius.circular(w(400))),
                    ),
                  ),
                  Positioned(
                    right: -30,
                    top: -50,
                    child: Container(
                      height: w(300),
                      width: w(300),
                      decoration: BoxDecoration(
                          gradient: RadialGradient(
                              colors: [
                                Colors.purple[900],
                                Colors.redAccent,
                              ],
                              focal: Alignment(1, 0),
                              stops: [0.0, 1]),
                          borderRadius: BorderRadius.circular(w(150))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              ".... .... .... 3689",
                              style: TextStyle(
                                  fontSize: sp(55),
                                  letterSpacing: 1.2,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Text(
                              "VISA",
                              style: TextStyle(
                                  fontSize: sp(60),
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(height: h(170)),
                        Text(
                          "Balance",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: sp(25),
                          ),
                        ),
                        SizedBox(height: h(30)),
                        Text.rich(TextSpan(
                          text: "£ 720 000 ",
                          children: [TextSpan(text: "\u2070\u2070")],
                          style: TextStyle(
                            fontSize: sp(65),
                            letterSpacing: 3,
                            color: Colors.white,
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
