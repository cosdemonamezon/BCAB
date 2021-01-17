import 'package:flutter/material.dart';

class AvatarTabTwo extends StatefulWidget {
  AvatarTabTwo({Key key}) : super(key: key);

  @override
  _AvatarTabTwoState createState() => _AvatarTabTwoState();
}

class _AvatarTabTwoState extends State<AvatarTabTwo> {
  String h = '1';
  String sh = '1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 300.0,
                    width: 300.0,
                    child: Image.asset(
                      'assets/h' + h + '.png',
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                  Container(
                    height: 300.0,
                    width: 300.0,
                    child: Image.asset(
                      'assets/s' + sh + '.png',
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 20.0,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      //color: Colors.black,
                      height: 46,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Text(
                          "หัว", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.6, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      //color: Colors.black,
                      height: 46,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Text(
                          "ตัว", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.6, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      //color: Colors.black,
                      height: 46,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Text(
                          "ขา", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.6, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh1.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh1.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh1.PNG")
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}