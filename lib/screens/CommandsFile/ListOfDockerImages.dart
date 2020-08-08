import 'package:dock_man/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String query;

class ListOfDockerImages extends StatelessWidget {
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      title: Text(
        "List of Docker Image(s)",
        style: GoogleFonts.lato(),
      ),
      centerTitle: true,
    );
  }

  BottomAppBar bottomAppBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.red,
      shape: CircularNotchedRectangle(),
      notchMargin: 7,
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
            onPressed: () => Homebody(),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            iconSize: 28.0,
            tooltip: "Setting",
            onPressed: () {},
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
      backgroundColor: Colors.black,
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
      body: ListOfDockerImagesBody(),
      floatingActionButton: floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomAppBar(context),
    );
  }
}

class ListOfDockerImagesBody extends StatelessWidget {
  command(cmd) async {
    print(cmd);
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
              "Docker Images List",
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                command(query);
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
                child: const Text('Show List', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
