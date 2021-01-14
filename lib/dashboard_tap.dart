import 'package:BCAB/avatar_tab.dart';
import 'package:BCAB/news_tab.dart';
import 'package:BCAB/songs_tab.dart';
import 'package:BCAB/stadium.dart';
import 'package:BCAB/reward_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:BCAB/main.dart';

import 'news_tab.dart';
import 'profile_tab.dart';
import 'settings_tab.dart';
import 'songs_tab.dart';
import 'avatar_tab.dart';
import 'wallet_tab.dart';
import 'widgets.dart';
import 'login_page.dart';

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
      drawer: Drawer(
        child: Container(
          color: Color(0xFFededed),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFFb58d08)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset('assets/logo.png'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
              ),
              ListTile(
                leading: AvatarTab.androidIcon,
                title: Text(AvatarTab.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push<void>(context,
                      MaterialPageRoute(builder: (context) => AvatarTab()));
                },
              ),
              // Long drawer contents are often segmented.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              ListTile(
                leading: SongsTab.androidIcon,
                title: Text(SongsTab.title),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: NewsTab.androidIcon,
                title: Text(NewsTab.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push<void>(context,
                      MaterialPageRoute(builder: (context) => NewsTab()));
                },
              ),
              ListTile(
                leading: ProfileTab.androidIcon,
                title: Text(ProfileTab.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push<void>(context,
                      MaterialPageRoute(builder: (context) => ProfileTab()));
                },
              ),
              // Long drawer contents are often segmented.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              ListTile(
                leading: SettingsTab.androidIcon,
                title: Text(SettingsTab.title),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push<void>(context,
                      MaterialPageRoute(builder: (context) => SettingsTab()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push<void>(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
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
                color: Color(0xFFededed),
                //height: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  padding: EdgeInsets.all(3.0),
                  children: [
                    makeDashboardItem(
                        "Avatar", Icons.supervised_user_circle, 1, context),
                    makeDashboardItem(
                        "Wallet", Icons.wallet_giftcard, 2, context),
                    makeDashboardItem("Sports", Icons.sports, 3, context),
                    makeDashboardItem(
                        "Stadium", Icons.room_service, 4, context),
                    makeDashboardItem("Reward", Icons.recommend, 5, context),
                    makeDashboardItem("Events", Icons.event, 6, context),
                    makeDashboardItem("News", Icons.new_releases, 7, context),
                    makeDashboardItem("Promotion", Icons.add_box, 8, context),
                    makeDashboardItem(
                        "Calendar", Icons.calendar_today, 9, context)
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
        decoration: BoxDecoration(color: Color(0xFFb58d08)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF343434),
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.home_work),
                        onPressed: () {}),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF343434),
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.phone),
                        onPressed: () {}),
                  ),
                  Text(
                    "contact us",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF343434),
                    radius: 24,
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.notification_important),
                        onPressed: () {}),
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF343434),
                    radius: 24,
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.settings),
                        onPressed: () {}),
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
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
    margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 9.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF343434),
        borderRadius: BorderRadius.circular(20),
      ),
      child: new InkWell(
        onTap: () {
          if (page == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AvatarTab()));
          } else if (page == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => WalletTab()));
          } else if (page == 3) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SongsTab()));
          } else if (page == 4) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Stadium()));
          } else if (page == 5) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Reward()));
          } else if (page == 6) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          } else if (page == 7) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NewsTab()));
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
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                title,
                style: new TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
