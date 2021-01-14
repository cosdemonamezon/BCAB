import 'package:BCAB/avatar_tab.dart';
import 'package:BCAB/news_tab.dart';
import 'package:BCAB/songs_tab.dart';
import 'package:BCAB/stadium.dart';
import 'package:BCAB/reward_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final imageList = [
    'assets/v1.jpg',
    'assets/v2.jpg',
    'assets/v3.jpg',
    'assets/v4.jpg',
    'assets/v5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Dashboard"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180.0,
              color: Colors.blueAccent,
              child: Swiper(
                  itemCount: imageList.length,
                  pagination: SwiperPagination(),
                  itemBuilder: (context, index) {
                    return Image(
                      image: AssetImage(imageList[index]),
                      fit: BoxFit.cover,
                    );
                  }),
            ),

            //SizedBox(height: 5.0,),

            Expanded(
              child: Container(
                //color: Colors.black,
                //height: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  padding: EdgeInsets.all(3.0),
                  children: [
                    makeDashboardItem("Avatar", Icons.book, 1, context),
                    makeDashboardItem(
                        "Wallet", Icons.wallet_giftcard, 2, context),
                    makeDashboardItem("Sports", Icons.sports, 3, context),
                    makeDashboardItem(
                        "Stadium", Icons.room_service, 4, context),
                    makeDashboardItem("Reward", Icons.recommend, 5, context),
                    makeDashboardItem("Events", Icons.event, 6, context),
                    makeDashboardItem(
                        "Stadium", Icons.room_service, 7, context),
                    makeDashboardItem("Reward", Icons.recommend, 8, context),
                    makeDashboardItem("Events", Icons.event, 9, context)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.green),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        icon: Icon(Icons.home_work), onPressed: () {}),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        icon: Icon(Icons.drag_indicator), onPressed: () {}),
                  ),
                  Text(
                    "Basket",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        icon: Icon(Icons.gamepad_sharp), onPressed: () {}),
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        icon: Icon(Icons.battery_std_sharp), onPressed: () {}),
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(fontWeight: FontWeight.bold),
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

Card makeDashboardItem(String title, IconData icon, int page, context) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    elevation: 5.0,
    margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(220, 220, 220, 1.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: new InkWell(
        onTap: () {
          if (page == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AvatarTab()));
          } else if (page == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AvatarTab()));
          } else if (page == 3) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SongsTab()));
          } else if (page == 4) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NewsTab()));
          } else if (page == 5) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Reward()));
          } else if (page == 6) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          } else if (page == 7) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Stadium()));
          } else if (page == 8) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          } else if (page == 9) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: [
            SizedBox(height: 15.0),
            Center(
              child: Icon(
                icon,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                title,
                style: new TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
