import 'package:flutter/material.dart';

class CardData {
  String title;
  String balance;

  CardData({@required this.title, @required this.balance});
}

List<CardData> alldata = [
  CardData(title: "Balance", balance: "\$ 18"),
  CardData(title: "Rewards", balance: "\$ 10.24"),
  CardData(title: "Total Trips", balance: "\$ 189"),
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle _textStyle =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    @override
    Widget buildSizedBox(BuildContext context) {
      return SizedBox(
        height: _size.height * 0.02,
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: _size.height,
          width: _size.width,
          color: Color(0xff35BDD0).withOpacity(0.8),
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello,",
                              style: _textStyle,
                            ),
                            Text(
                              "John Deo",
                              style: _textStyle,
                            )
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                        ),
                      ],
                    ),
                    buildSizedBox(context),
                    Text(
                      "Where you will go",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          labelText: "Search",
                          labelStyle: TextStyle(color: Colors.black38),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black38,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(16))),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 246,
                child: Container(
                  padding: EdgeInsets.only(top: 72),
                  height: MediaQuery.of(context).size.height * 1.3,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26.0),
                        child: Text(
                          "Choose your Transport",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      buildContainer("Bus", "assets/asset1.png"),
                      buildContainer("MRT", "assets/asset2.png")
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 210,
                left: 24,
                right: 24,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  child: Container(
                    // margin: EdgeInsets.only(left: 20, right: 20),
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: alldata
                            .map((carddata) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      carddata.title,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Text(
                                      carddata.balance,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff35BDD0).withOpacity(0.8),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black38,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
                color: Colors.black38,
              ),
              title: Text("")),
        ],
      ),
    );
  }

  Widget buildContainer(String text, String image) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 26, vertical: 6),
      height: MediaQuery.of(context).size.height * 0.21,
      decoration: BoxDecoration(
          color: Color(0xff35BDD0).withOpacity(0.6),
          borderRadius: BorderRadius.circular(28)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 20,
                  width: 60,
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Select",
                      style:
                          TextStyle(fontSize: 9, fontWeight: FontWeight.w600),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset(image))
        ],
      ),
    );
  }
}
