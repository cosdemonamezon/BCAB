import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'settings_tab.dart';
import 'widgets.dart';

class WalletTab extends StatelessWidget {
  static const title = 'Wallet';
  static const androidIcon = Icon(Icons.person);
  static const iosIcon = Icon(CupertinoIcons.profile_circled);

  Widget _buttonWidget(context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: MediaQuery.of(context).size.height * .48,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 1.5,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    children: <Widget>[
                      _countButton("1", context),
                      _countButton("2", context),
                      _countButton("3", context),
                      _countButton("4", context),
                      _countButton("5", context),
                      _countButton("6", context),
                      _countButton("7", context),
                      _countButton("8", context),
                      _countButton("9", context),
                      _icon(Icons.money, true, context),
                      _countButton("0", context),
                      _icon(Icons.backspace, false, context),
                    ],
                  ),
                ),
                // _transferButton()
              ],
            )));
  }

  Widget _transferButton() {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Wrap(
          children: <Widget>[
            Transform.rotate(
              angle: 70,
              child: Icon(
                Icons.swap_calls,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "Apply",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ));
  }

  Widget _icon(IconData icon, bool isBackground, context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: isBackground ? Colors.black : Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            !isBackground
                ? SizedBox()
                : Text(
                    "Change",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
          ],
        ));
  }

  Widget _countButton(String text, context) {
    return Material(
        child: InkWell(
            onTap: () {
              print("Sfsf");
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.black,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )));
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: SettingsTab.iosIcon,
          onPressed: () {
            // This pushes the settings page as a full page modal dialog on top
            // of the tab bar and everything.
            Navigator.of(context, rootNavigator: true).push<void>(
              CupertinoPageRoute(
                title: SettingsTab.title,
                fullscreenDialog: true,
                builder: (context) => SettingsTab(),
              ),
            );
          },
        ),
      ),
      child: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Container(
                      height: 95,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sending money to Geryson',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 160,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text(
                        "100,000.00",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              _buttonWidget(context),
            ],
          ),
        ));
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
