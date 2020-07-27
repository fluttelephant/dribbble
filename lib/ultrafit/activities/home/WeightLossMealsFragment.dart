import 'package:firstappflutter/ultrafit/const.dart';
import 'package:firstappflutter/ultrafit/shared/UltraFitAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightLossMealsFragment extends StatefulWidget {
  @override
  _WeightLossMealsFragmentState createState() =>
      _WeightLossMealsFragmentState();
}

class _WeightLossMealsFragmentState extends State<WeightLossMealsFragment> {
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
              title: "Weight Loss Meals",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "56",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                      ),
                      Text(
                        "meals",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 125,
                    child: FlatButton(
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Cal low to high",
                            style: TextStyle(
                              color: color2,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      color: color2.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: size.width / 4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://ifoodreal.com/wp-content/uploads/2018/04/FG-chicken-tostadas.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 0, bottom: 0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          "Apple cider vinegra",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4
                                              .copyWith(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                        ),
                                      ),
                                      Icon(Icons.favorite_border)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.ac_unit),
                                          Text("405 cal"),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.timer),
                                          Text("15 min"),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
