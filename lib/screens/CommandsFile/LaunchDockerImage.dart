import 'package:dock_man/screens/Settings/settings.dart';
import 'package:dock_man/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String osname, nickname;

class LaunchDockerImage extends StatelessWidget {
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red[200],
      title: Text(
        "Launch Docker Image",
        style: GoogleFonts.lato(
          color: Colors.black,
        ),
      ),
      centerTitle: true,
    );
  }

  BottomAppBar bottomAppBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.red[200],
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            iconSize: 28.0,
            tooltip: "Home",
            onPressed: () => Home(),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            iconSize: 28.0,
            tooltip: "Setting",
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Settings(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  FloatingActionButton floatingActionButton() {
    return FloatingActionButton(
      child: const Icon(
        Icons.feedback,
        color: Colors.white,
      ),
      backgroundColor: Colors.red[300],
      elevation: 2,
      tooltip: "Feedback",
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: LaunchDockerImageBody(),
      floatingActionButton: floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomAppBar(context),
    );
  }
}

class LaunchDockerImageBody extends StatelessWidget {
  command(osname, nname) async {
    print(osname);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                "assets/images/dockman.png",
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Commands",
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Card(
                child: TextField(
                  onChanged: (val) {
                    osname = val;
                  },
                  decoration: InputDecoration(
                    labelText: "Name of OS",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Card(
                child: TextField(
                  onChanged: (val) {
                    nickname = val;
                  },
                  decoration: InputDecoration(
                    labelText: "Nickname for OS",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                command(osname, nickname);
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text('Submit', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
