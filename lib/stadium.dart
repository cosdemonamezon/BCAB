import 'package:flutter/material.dart';

class Stadium extends StatefulWidget {
  Stadium({Key key}) : super(key: key);

  @override
  _StadiumState createState() => _StadiumState();
}

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
                children: [
                  Text("data")
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 5,
                padding: EdgeInsets.all(10.0),
                children: [
                  buildContainer("1",'assets/t1.jpg'),
                  buildContainer("2",'assets/t1.jpg'),
                  buildContainer("3",'assets/t1.jpg'),
                  buildContainer("4",'assets/t1.jpg'),
                  buildContainer("5",'assets/t1.jpg'),
                  buildContainer("6",'assets/t1.jpg'),
                  buildContainer("7",'assets/t1.jpg'),
                  buildContainer("8",'assets/t1.jpg'),
                  buildContainer("9",'assets/t1.jpg'),
                  buildContainer("10",'assets/t1.jpg'),
                  buildContainer("11",'assets/t1.jpg'),
                  buildContainer("12",'assets/t1.jpg'),
                  buildContainer("13",'assets/t1.jpg'),
                  buildContainer("14",'assets/t1.jpg'),
                  buildContainer("15",'assets/t1.jpg'),
                  buildContainer("16",'assets/t1.jpg'),
                  buildContainer("17",'assets/t1.jpg'),
                  buildContainer("18",'assets/t1.jpg'),
                  buildContainer("19",'assets/t1.jpg'),
                  buildContainer("20",'assets/t1.jpg'),
                  buildContainer("21",'assets/t1.jpg'),
                  buildContainer("22",'assets/t1.jpg'),
                  buildContainer("23",'assets/t1.jpg'),
                  buildContainer("24",'assets/t1.jpg'),
                  buildContainer("25",'assets/t1.jpg'),
                  buildContainer("26",'assets/t1.jpg'),
                  buildContainer("27",'assets/t1.jpg'),
                  buildContainer("28",'assets/t1.jpg'),
                  buildContainer("29",'assets/t1.jpg'),
                  buildContainer("30",'assets/t1.jpg'),
                  buildContainer("31",'assets/t1.jpg'),
                  buildContainer("32",'assets/t1.jpg'),
                  buildContainer("33",'assets/t1.jpg'),
                  buildContainer("34",'assets/t1.jpg'),
                  buildContainer("35",'assets/t1.jpg'),
                  buildContainer("36",'assets/t1.jpg'),
                  buildContainer("37",'assets/t1.jpg'),
                  buildContainer("38",'assets/t1.jpg'),
                  buildContainer("39",'assets/t1.jpg'),
                  buildContainer("40",'assets/t1.jpg'),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     buildContainer('assets/t1.jpg'),
            //     buildContainer('assets/t1.jpg'),
            //     buildContainer('assets/t1.jpg'),
            //     buildContainer('assets/t1.jpg'),
            //     buildContainer('assets/t1.jpg'),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(String title,String image) {
    return Container(
      //color: Colors.red,
      width: 70,
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill
        ),
      ),
      child: GestureDetector(
        onTap: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title, style: TextStyle(color: Colors.red),),
          ],
        ),
      ),
    );
  }
}