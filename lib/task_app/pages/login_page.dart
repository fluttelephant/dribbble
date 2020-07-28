import 'package:firstappflutter/task_app/components/dot.dart';
import 'package:firstappflutter/task_app/pages/tasks_page.dart';
import 'package:flutter/material.dart';

final Color myGrey = Colors.grey.shade300;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  "assets/taskapp/phone.png",
                  width: 160,
                  height: 160,
                ),
              ),
              Text(
                'Organize your works',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Let's organize your works with priority\nand do everything without stress",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Dot(),
                  SizedBox(
                    width: 10,
                  ),
                  Dot(color: Colors.grey.shade400)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              loginButton(),
              loginButton(
                icon: "assets/taskapp/google.png",
                text: "Continue with Google",
              ),
              loginButton(
                  icon: "assets/taskapp/email.png",
                  text: "Continue with Email",
                  backgroundColor: Colors.white,
                  borderColor: myGrey),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButton(
      {Color backgroundColor, Color borderColor, String icon, String text}) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaskPage())),
      child: Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.only(bottom: 12.0),
        decoration: BoxDecoration(
            color: backgroundColor ?? myGrey,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: borderColor ?? myGrey)),
        child: Row(
          children: <Widget>[
            Image.asset(icon ?? "assets/taskapp/facebook.png"),
            Expanded(
              child: Text(
                text ?? 'Continue with Facebook',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
