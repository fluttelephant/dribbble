import 'package:firstappflutter/ultrafit/const.dart';
import 'package:flutter/material.dart';

class FoodRadioDefaultWidget extends StatefulWidget {
  final dynamic item;
  Function onSelect;

  FoodRadioDefaultWidget(this.item, {Key key, @required this.onSelect})
      : super(key: key);

  @override
  _FoodRadioDefaultWidgetState createState() => _FoodRadioDefaultWidgetState();
}

class _FoodRadioDefaultWidgetState extends State<FoodRadioDefaultWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.item["state"] ? color1 : whiteLilac,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          widget.onSelect();
        },
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
              ),
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.check,
                size: 16,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "${widget.item["name"]}",
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: widget.item["state"]
                        ? Colors.white
                        : Theme.of(context).textTheme.headline4.color,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
