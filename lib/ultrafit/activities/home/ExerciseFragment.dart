import 'package:firstappflutter/ultrafit/const.dart';
import 'package:firstappflutter/ultrafit/shared/UltraFitAppBar.dart';
import 'package:flutter/material.dart';

class ExerciseFragment extends StatefulWidget {
  @override
  _ExerciseFragmentState createState() => _ExerciseFragmentState();
}

class _ExerciseFragmentState extends State<ExerciseFragment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[
            UltraFitAppBar(
              size: size,
              title: "Exercise",
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Your progress : ",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      Text(
                        "4/7",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.only(right: 3 * size.width / 7),
                    child: Container(
                      //width: 2 * size.width / 6,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Round 1",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 28,
                        ),
                  ),
                  Text(
                    "Legts & Butt workouts",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        //fontSize: 28,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Butterfly Sit Ups",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                        //fontSize: 28,
                                        color: Colors.black,
                                      ),
                                ),
                                Icon(Icons.check_circle_outline)
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 160,
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.play_circle_filled,
                                    color: color1,
                                    size: 46,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    "01",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                          //fontSize: 28,
                                          color: color1,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                      """Lie face up on the mat, with your arms extended past your head. Bend your knees and have the soles of your feet facing one another so it's in a diamond shape.
                                    """),
                                )
                              ],
                            ),
                            Divider(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    "02",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                          //fontSize: 28,
                                          color: color1,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                      """Crunch your abs to a sitting position as you reach forward with both hands to your feet.
                                    """),
                                )
                              ],
                            ),
                            Divider(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    "03",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                          //fontSize: 28,
                                          color: color1,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                      """Slowly lower back to starting position.
                                    """),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
