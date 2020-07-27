import 'package:firstappflutter/ultrafit/activities/home/ExerciseFragment.dart';
import 'package:firstappflutter/ultrafit/const.dart';
import 'package:firstappflutter/ultrafit/shared/UltraFitAppBar.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  List<dynamic> exercices = [
    {
      "name": "Dumbbell rows",
      "description": "16 workouts",
      "time": "1hr 20min",
      "icon": "gym.png"
    },
    {
      "name": "Squat training",
      "description": "11 workouts",
      "time": "0hr 45min",
      "icon": "squat.png"
    },
    {
      "name": "Squat training",
      "description": "11 workouts",
      "time": "0hr 45min",
      "icon": "squat.png"
    },
  ];
  var _pageController = PageController(
    viewportFraction: 0.5,
  );

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
              title: "Home",
            ),
            Container(
              height: 3.5 * size.height / 8,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Hi Anabelle"),
                        Text(
                          "Get In Shape",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: size.height / 3.8,
                      decoration: BoxDecoration(
                        color: color2,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white.withOpacity(0.5),
                              ),
                              child: Text(
                                "Entry Level",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              "Shoolder Press",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            Container(
                              width: size.width / 2.6,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "16 shoolders workout videos for you",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "34 min",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 20,
                    child: Image.asset(
                      "assets/ultrafit/images/19342.png",
                      width: 120,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Popular Exercices",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Container(
                          height: 20,
                          width: 75,
                          child: FlatButton(
                            child: Text(
                              "View all",
                              style: TextStyle(
                                color: color2,
                              ),
                            ),
                            onPressed: () {},
                            color: color2.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: exercices.length,
                        itemBuilder: (context, index) {
                          return ItemExercice(size, exercices[index]);
                        },
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

class ItemExercice extends StatelessWidget {
  final Size size;
  final dynamic exercice;

  const ItemExercice(
    this.size,
    this.exercice, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExerciseFragment(),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              "assets/ultrafit/images/${exercice["icon"]}",
              height: 30,
            ),
            Column(
              children: <Widget>[
                Text(
                  "${exercice["name"]}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 14),
                ),
                Text(
                  "${exercice["description"]}",
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.timer),
                Text(
                  "${exercice["time"]}",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
