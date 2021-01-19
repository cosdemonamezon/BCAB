import 'package:flutter/material.dart';

class AvatarTabTwo extends StatefulWidget {
  AvatarTabTwo({Key key}) : super(key: key);

  @override
  _AvatarTabTwoState createState() => _AvatarTabTwoState();
}

class _AvatarTabTwoState extends State<AvatarTabTwo> {
  String h = '1';
  String sh = '1';
  bool bth = true;
  bool btb = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar"),
      ),
      body: Padding(
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
                    onTap: (){
                      setState(() {
                        bth = true;
                      });
                    },
                    child: Container(
                      //color: Colors.black,
                      height: 50,
                      width: 160,
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
                    onTap: (){
                      setState(() {
                        bth = false;
                        btb = true;
                      });
                    },
                    child: Container(
                      //color: Colors.black,
                      height: 50,
                      width: 160,
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
                  
                ],
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (bth == true) {
                          h = '1';
                        } else if(btb == true){
                          sh = '1';
                        }else{

                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: bth == true ? AssetImage("assets/s_h1.png") 
                          : btb == true ? AssetImage("assets/s_s1.png")
                          : AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (bth == true) {
                          h = '2';
                        } else if(btb == true){
                          sh = '2';
                        }else{

                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: bth == true ? AssetImage("assets/s_h2.png") 
                          : btb == true ? AssetImage("assets/s_s2.png")
                          : AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (bth == true) {
                          h = '3';
                        } else if(btb == true){
                          sh = '3';
                        }else{

                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: bth == true ? AssetImage("assets/s_h3.png") 
                          : btb == true ? AssetImage("assets/s_s3.png")
                          : AssetImage("assets/nh2.PNG")
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
                    onTap: (){
                      setState(() {
                        if (bth == true) {
                          h = '4';
                        } else if(btb == true){
                          sh = '4';
                        }else{

                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: bth == true ? AssetImage("assets/s_h4.png") 
                          : btb == true ? AssetImage("assets/s_s4.png")
                          : AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (bth == true) {
                          h = '5';
                        } else if(btb == true){
                          sh = '5';
                        }else{

                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: bth == true ? AssetImage("assets/s_h5.png") 
                          : btb == true ? AssetImage("assets/s_s5.png")
                          : AssetImage("assets/nh2.PNG")
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (bth == true) {
                          h = '6';
                        } else if(btb == true){
                          sh = '6';
                        }else{

                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: bth == true ? AssetImage("assets/s_h6.png") 
                          : btb == true ? AssetImage("assets/s_s6.png")
                          : AssetImage("assets/nh2.PNG")
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