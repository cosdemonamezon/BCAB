import 'package:flutter/material.dart';

class Stadium extends StatefulWidget {
  Stadium({Key key}) : super(key: key);

  @override
  _StadiumState createState() => _StadiumState();
}

List<String> pathName = [
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

class _StadiumState extends State<Stadium> {
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
                children: [
                  buildContainer("1", pathName[0], 'pathPic1'),
                  buildContainer("2", pathName[1], 'pathPic2'),
                  buildContainer("3", pathName[2], 'pathPic3'),
                  buildContainer("4", pathName[3], 'pathPic4'),
                  buildContainer("5", pathName[4], 'pathPic5'),
                  buildContainer("6", pathName[5], 'pathPic6'),
                  buildContainer("7", pathName[6], 'pathPic7'),
                  buildContainer("8", pathName[7], 'pathPic8'),
                  buildContainer("9", pathName[8], 'pathPic9'),
                  buildContainer("10", pathName[9], 'pathPic10'),
                  buildContainer("11", pathName[10], 'pathPic1'),
                  buildContainer("12", pathName[11], 'pathPic1'),
                  buildContainer("13", pathName[12], 'pathPic1'),
                  buildContainer("14", pathName[13], 'pathPic1'),
                  buildContainer("15", pathName[14], 'pathPic1'),
                  buildContainer("16", pathName[15], 'pathPic1'),
                  buildContainer("17", pathName[16], 'pathPic1'),
                  buildContainer("18", pathName[17], 'pathPic1'),
                  buildContainer("19", pathName[18], 'pathPic1'),
                  buildContainer("20", pathName[19], 'pathPic1'),
                  buildContainer("21", pathName[20], 'pathPic1'),
                  buildContainer("22", pathName[21], 'pathPic1'),
                  buildContainer("23", pathName[22], 'pathPic1'),
                  buildContainer("24", pathName[23], 'pathPic1'),
                  buildContainer("25", pathName[24], 'pathPic1'),
                  buildContainer("26", pathName[25], 'pathPic1'),
                  buildContainer("27", pathName[26], 'pathPic1'),
                  buildContainer("28", pathName[27], 'pathPic1'),
                  buildContainer("29", pathName[28], 'pathPic1'),
                  buildContainer("30", pathName[29], 'pathPic1'),
                  buildContainer("31", pathName[30], 'pathPic1'),
                  buildContainer("32", pathName[31], 'pathPic1'),
                  buildContainer("33", pathName[32], 'pathPic1'),
                  buildContainer("34", pathName[33], 'pathPic1'),
                  buildContainer("35", pathName[34], 'pathPic1'),
                  buildContainer("36", pathName[35], 'pathPic1'),
                  buildContainer("37", pathName[36], 'pathPic1'),
                  buildContainer("38", pathName[37], 'pathPic1'),
                  buildContainer("39", pathName[38], 'pathPic1'),
                  buildContainer("40", pathName[39], 'pathPic1'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildContainer(String title, String image, String path) {
    return GestureDetector(
      onTap: () {
        print(image);

        for (var i = 0; i < pathName.length - 1; i++) {
          pathName[i] = "assets/t1.png";
        }

        // if (path == "pathPic1") {
          image = "assets/h1.png";
          pathName[int.parse(title) - 1] = image;
        // }
      },
      child: Container(
        //color: Colors.red,
        width: 70,
        height: 100,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

