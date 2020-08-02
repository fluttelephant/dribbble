import 'package:firstappflutter/ultrafit/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodRadioCardWidget extends StatefulWidget {
  final dynamic item;
  Function onSelect;

  FoodRadioCardWidget(this.item, {Key key, @required this.onSelect})
      : super(key: key);

  @override
  _FoodRadioCardWidgetState createState() => _FoodRadioCardWidgetState();
}

class _FoodRadioCardWidgetState extends State<FoodRadioCardWidget> {
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
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/ultrafit/images/${widget.item["image"]}.png",
                    height: 24,
                    color: widget.item["state"]
                        ? Colors.white
                        : Theme.of(context).textTheme.headline4.color,
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
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                padding: EdgeInsets.all(3),
                child: Icon(
                  Icons.check,
                  size: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
