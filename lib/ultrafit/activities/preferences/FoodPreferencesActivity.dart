import 'package:firstappflutter/ultrafit/const.dart';
import 'package:firstappflutter/ultrafit/shared/FoodRadioCardWidget.dart';
import 'package:firstappflutter/ultrafit/shared/FoodRadioDefaultWidget.dart';
import 'package:firstappflutter/ultrafit/shared/UltraFitAppBar.dart';
import 'package:flutter/material.dart';

class FoodPreferencesActivity extends StatefulWidget {
  @override
  _FoodPreferencesActivityState createState() =>
      _FoodPreferencesActivityState();
}

class _FoodPreferencesActivityState extends State<FoodPreferencesActivity> {
  List<dynamic> nutritions = [
    {
      "name": "Veganism",
      "state": false,
    },
    {
      "name": "A Button",
      "state": false,
    },
    {
      "name": "No Restriction",
      "state": false,
    }
  ];

  List<dynamic> whatLikes = [
    {"name": "Fruits", "state": true, "image": "fruits"},
    {"name": "Chicken", "state": false, "image": "chicken"},
    {"name": "Salad", "state": false, "image": "salad"},
    {"name": "Protein", "state": false, "image": "protein"},
    {"name": "Fish", "state": false, "image": "protein"},
    {"name": "Dairy", "state": false, "image": "milk"}
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          height: size.height / 3.5,
          width: size.height,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Nutrition",
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: nutritions.length,
                  padding: EdgeInsets.all(0),
                  itemBuilder: (context, index) => FoodRadioDefaultWidget(
                    nutritions[index],
                    onSelect: () {
                      nutritions[index]["state"] = !nutritions[index]["state"];
                      setState(() {});
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 0,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          height: size.height / 3,
          width: size.height,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "What do you like ?",
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: whatLikes.length,
                  padding: EdgeInsets.all(0),
                  itemBuilder: (context, index) => FoodRadioCardWidget(
                    whatLikes[index],
                    onSelect: () {
                      whatLikes[index]["state"] = !whatLikes[index]["state"];
                      setState(() {});
                    },
                  ),
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    //childAspectRatio: 6 / 4,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
