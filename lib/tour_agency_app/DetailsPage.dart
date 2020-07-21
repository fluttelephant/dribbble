import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  Size size;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    double topSpace = 2.9 * size.height / 5;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: topSpace + 60,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/touragencyapp/4.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.2),
                padding: EdgeInsets.all(40),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        "Best of Man Waterfalls",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        """Man est une grande ville de l'ouest de la Côte d'Ivoire et le chef-lieu de la région du Tonkpi. La ville est surnommée "La ville aux 18 montagnes", et est située dans une cuvette entourée d'une chaîne de montagnes. 
                        """,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: topSpace,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  TabBar(
                    controller: _tabController,
                    tabs: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(
                          "Overview",
                          style: TextStyle(
                            color: _tabController.index == 0
                                ? Colors.black
                                : Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(
                          "Photo",
                          style: TextStyle(
                            color: _tabController.index == 1
                                ? Colors.black
                                : Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                            color: _tabController.index == 2
                                ? Colors.black
                                : Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: size.height - topSpace - 150,
                    child: TabBarView(
                      controller: _tabController,
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      size: 14,
                                      color: Colors.pink,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "8 hours",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.language,
                                      size: 14,
                                      color: Colors.pink,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Offered in: English",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "La Côte d'Ivoire est un pays d'Afrique de l'Ouest doté de stations balnéaires, de forêts tropicales et d'un patrimoine colonial français. Abidjan, sur la côte Atlantique, est le principal centre urbain du pays. Ses sites modernes regroupent la Pyramide, un édifice en béton faisant penser à une ziggourat.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                        ),
                        Container(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Material(
              color: Colors.white,
              elevation: 20,
              child: Container(
                height: 100,
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "\$50",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "per person",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 1.8 * size.width / 3,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[
                            Colors.pinkAccent,
                            Colors.pink,
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFF1919).withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            "Book now",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: BackButton(
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
