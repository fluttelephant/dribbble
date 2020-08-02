import 'package:firstappflutter/ultrafit/activities/auth/RegisterFragment.dart';
import 'package:firstappflutter/ultrafit/activities/auth/SignInFragment.dart';
import 'package:flutter/material.dart';

import '../../const.dart';

class AuthActivity extends StatefulWidget {
  @override
  _AuthActivityState createState() => _AuthActivityState();
}

class _AuthActivityState extends State<AuthActivity>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: size.height / 3,
              width: size.width,
              child: Center(
                child: Image.asset(
                  "assets/ultrafit/images/Your-Logo-here.png",
                  height: 60,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    TabBar(
                      tabs: <Widget>[
                        Text(
                          "SIGN IN",
                        ),
                        Text(
                          "REGISTER",
                        ),
                      ],
                      controller: _tabController,
                      labelPadding: EdgeInsets.all(10),
                      labelColor: color1,
                      unselectedLabelColor: Colors.grey,
                      labelStyle:
                          Theme.of(context).textTheme.headline4.copyWith(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                              ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          SingInFragment(),
                          RegisterFragment(),
                        ],
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
