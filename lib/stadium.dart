import 'package:flutter/material.dart';

class Stadium extends StatefulWidget {
  Stadium({Key key}) : super(key: key);

  @override
  _StadiumState createState() => _StadiumState();
}

class _StadiumState extends State<Stadium> {
  bool clickpic = false;

  List<String> title = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20",
  "21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40",
  ];

  @override
  void initState() {
    super.initState();
  }

  //int title = 0;

  List<String> numId = [
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
    "assets/t1.jpg",
  ];

  // _changePic(index) async {
  //   clickpic = true;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stadium"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("data")],
              ),
            ),
            Expanded(
              child: GridView.count(
              crossAxisCount: 5,
              padding: EdgeInsets.all(10.0),
              children: List.generate(numId.length, (index) {
                return Container(
                  child: GestureDetector(
                    onTap: () {
                      //print(index);
                      setState(() {
                        numId[index] = "assets/s_h3.png";

                        for (var i = 0; i < numId.length; i++) {
                          if (i != index) {
                            numId[i] = "assets/t1.jpg";
                          }
                        }
                      });
                   
                    },
                    child: Container(
                      width: 70,
                      height: 100,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(numId[index]), fit: BoxFit.fill),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(                            
                            title[index],
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )),
          ],
        ),
      ),
    );
  }
}
