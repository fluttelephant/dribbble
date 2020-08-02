import 'package:firstappflutter/ultrafit/activities/MainActivity.dart';
import 'package:firstappflutter/ultrafit/const.dart';
import 'package:flutter/material.dart';

class SingInFragment extends StatefulWidget {
  @override
  _SingInFragmentState createState() => _SingInFragmentState();
}

class _SingInFragmentState extends State<SingInFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    hintText: "Email address",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    hintText: "Password",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Forget password?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainActivity(),
                        ),
                      );
                    },
                    child: Text(
                      "SIGN IN",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
