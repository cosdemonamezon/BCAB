import 'package:flutter/material.dart';

class Stadium extends StatefulWidget {
  
  Stadium({Key key}) : super(key: key);

  @override
  _StadiumState createState() => _StadiumState();
}

class _StadiumState extends State<Stadium> {
  bool clickpic = false;

  List<String> numId = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20",
  "21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40",
  ];

  List<String> pathName = [
    "assets/t1.jpg",
    "assets/h1.png"
  ];
  
  _changePic() async{
    clickpic = true;
    setState(() {
      
    });
  }

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
                  children: List.generate(numId.length, (index){
                    return Container(
                      child: GestureDetector(
                        onTap: (){
                         _changePic();
                         print(index);
                         setState(() {
                           if (index == 0) {
                             print(5555555555555);
                           } else {
                           }
                         });
                        },
                        child: Container(
                          width: 70,
                          height: 100,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: clickpic == true && index == 0 ? AssetImage(pathName[1])
                              :AssetImage(pathName[0]), fit: BoxFit.fill
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                numId[index],
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        
                      ),
                    );
                  }
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}