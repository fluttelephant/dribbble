import 'package:firstappflutter/ultrafit/activities/preferences/FoodPreferencesActivity.dart';
import 'package:firstappflutter/ultrafit/const.dart';
import 'package:firstappflutter/ultrafit/shared/UltraFitAppBar.dart';
import 'package:flutter/material.dart';

class PreferencesActivity extends StatefulWidget {
  @override
  _PreferencesActivityState createState() => _PreferencesActivityState();
}

class _PreferencesActivityState extends State<PreferencesActivity> {
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
              title: "Food preferences",
              showAvatar: false,
            ),

            // First cart
            Container(
              height: 8 * size.height / 10,
              child: PageView(
                children: <Widget>[
                  FoodPreferencesActivity(),
                ],
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: color2,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
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
