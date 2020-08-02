import 'package:firstappflutter/ultrafit/activities/preferences/FoodPreferencesActivity.dart';
import 'package:firstappflutter/ultrafit/activities/preferences/PreferencesActivity.dart';
import 'package:flutter/material.dart';

class UltraFitAppBar extends StatelessWidget {
  const UltraFitAppBar({
    Key key,
    @required this.size,
    @required this.title,
    this.showAvatar = true,
  }) : super(key: key);

  final Size size;
  final String title;
  final bool showAvatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 8,
      child: Padding(
        padding: const EdgeInsets.only(
          //left: 15.0,
          right: 15.0,
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            BackButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Text(
              "$title",
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontSize: 18,
                  ),
            ),
            showAvatar
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreferencesActivity(),
                        ),
                      );
                    },
                    child: CircleAvatar(),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
