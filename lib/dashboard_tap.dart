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
                itemBuilder: (context, index){
                  return Image(
                    image: AssetImage(imageList[index]),
                    fit: BoxFit.cover,
                  );
                }
              ),
            ),
            
            //SizedBox(height: 5.0,),

            Expanded(
              child: Container(
                //color: Colors.black,
                //height: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 58.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(3.0),
                  children: [
                    makeDashboardItem("Avatar", Icons.book),
                    makeDashboardItem("Wallet", Icons.wallet_giftcard),
                    makeDashboardItem("Sports", Icons.sports),
                    makeDashboardItem("Stadium", Icons.room_service),
                    makeDashboardItem("Reward", Icons.recommend),
                    makeDashboardItem("Events", Icons.event)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(icon: Icon(Icons.home_work), onPressed: (){}),  
                  ),
                  Text(
                    "Home", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(icon: Icon(Icons.drag_indicator), onPressed: (){}),  
                  ),
                  Text(
                    "Basket", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(icon: Icon(Icons.gamepad_sharp), onPressed: (){}), 
                  ),
                  Text(
                    "Notification", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(pathicon1),
                    radius: 24,
                    child: IconButton(icon: Icon(Icons.battery_std_sharp), onPressed: (){}), 
                  ),
                  Text(
                    "Setting", style: TextStyle(fontWeight: FontWeight.bold),
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

Card makeDashboardItem (String title, IconData icon, ) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    elevation: 5.0,
    margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 20.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(220, 220, 220, 1.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: new InkWell(
        onTap: (){},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: [
            SizedBox(height: 20.0),
            Center(
              child: Icon(
                icon,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
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