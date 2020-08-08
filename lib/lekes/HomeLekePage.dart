import 'package:firstappflutter/lekes/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeLekePage extends StatefulWidget {
  @override
  _HomeLekePageState createState() => _HomeLekePageState();
}

class _HomeLekePageState extends State<HomeLekePage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController pageViewController;
  Size size;

  List<dynamic> typesItems = [
    {"label": "Maracana", "selected": true},
    {"label": "Footing", "selected": false},
    {"label": "Training", "selected": false},
  ];

  List<dynamic> articles = [
    {
      "name": "Maracana",
      "selected": true,
      "color": Colors.black,
      "image": "assets/lekes/images/lekedefault.png"
    },
    {
      "name": "Maracana",
      "selected": true,
      "color": Colors.white,
      "image": "assets/lekes/images/lekedefault.png"
    },
    {
      "name": "Maracana",
      "selected": true,
      "color": Colors.red,
      "image": "assets/lekes/images/lekedefault.png"
    },
    {
      "name": "Maracana",
      "selected": true,
      "color": Colors.yellow,
      "image": "assets/lekes/images/lekedefault.png"
    },
    {
      "name": "Maracana",
      "selected": true,
      "color": Colors.pink,
      "image": "assets/lekes/images/lekedefault.png"
    },
    {
      "name": "Maracana",
      "selected": true,
      "color": Colors.indigo,
      "image": "assets/lekes/images/lekedefault.png"
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageViewController = PageController(viewportFraction: 0.75);
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: whiteLilac,
      key: _scaffoldKey,
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "search",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(CupertinoIcons.search)
                            ],
                          ),
                          Text(
                            "LÈKÈS",
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: color1),
                          ),
                          Container(
                            height: 50,
                            width: size.width,
                            child:
                                CategoryListBarWidget(typesItems: typesItems),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: PageView.builder(
                          controller: pageViewController,
                          itemCount: articles.length,
                          itemBuilder: (context, index) {
                            dynamic article = articles[index];
                            return Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: <Widget>[
                                  Positioned.fill(
                                    top: 20,
                                    left: 20,
                                    right: 20,
                                    bottom: 20,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: color1.withOpacity(0.08),
                                            blurRadius: 9.6,
                                            spreadRadius: .9,
                                          ),
                                          BoxShadow(
                                            color: Colors.blueAccent
                                                .withOpacity(0.2),
                                            blurRadius: 20.6,
                                            spreadRadius: .9,
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(
                                          top: 20, left: 10, right: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Text(
                                            "${article["name"]}",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "${article["name"]}",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 29,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Icon(
                                                Icons.arrow_forward,
                                                size: 26,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    child: Container(
                                      height: size.height / 6,
                                      width: size.width / 2.5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(200),
                                          bottomRight: Radius.circular(30),
                                        ),
                                        color: article["color"],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 40,
                                    right: 0,
                                    top: 60,
                                    child: Image.asset(
                                      article["image"],
                                      fit: BoxFit.contain,
                                      //Ah AH AH je cherche comment mettre la couleur en filtre !!!! ;) color: article["color"],
                                      //colorBlendMode: BlendMode.softLight,
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
            ),
            Expanded(
              flex: 1,
              child: BottomBarWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryListBarWidget extends StatelessWidget {
  const CategoryListBarWidget({
    Key key,
    @required this.typesItems,
  }) : super(key: key);

  final List typesItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: typesItems.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        dynamic typeItem = typesItems[index];
        return Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.bottomLeft,
          child: Column(
            children: <Widget>[
              Text(
                "${typeItem["label"]}",
                style: TextStyle(
                  fontWeight: typeItem["selected"]
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: typeItem["selected"] ? 18 : 16,
                ),
              ),
              Visibility(
                visible: typeItem["selected"],
                child: Container(
                  height: 5,
                  width: 30,
                  decoration: BoxDecoration(
                    color: color1,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(CupertinoIcons.home, color: Colors.white, size: 26),
            onPressed: () {},
          ),
          Container(
            height: 50,
            width: 50,
            child: FlatButton(
              color: Colors.indigoAccent,
              child: Center(
                child: Icon(Icons.camera, color: Colors.white, size: 20),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          IconButton(
            icon: Icon(CupertinoIcons.person, color: Colors.white, size: 26),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
