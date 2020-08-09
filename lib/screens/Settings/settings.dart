import 'package:dock_man/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String mail, ip, name, val;

class Settings extends StatelessWidget {
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        "User Settings",
        style: GoogleFonts.lato(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: SettingsBody(),
    );
  }
}

edit(context, status) {
  Size size = MediaQuery.of(context).size;
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 16,
        child: Container(
          height: 200.0,
          width: 380.0,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Center(
                child: Text(
                  status,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Update:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              TextField(
                onChanged: (val) {},
                decoration: InputDecoration(
                  labelText: status,
                  border: OutlineInputBorder(),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    ip = val;
                  },
                  child: Text("Save"))
            ],
          ),
        ),
      );
    },
  );
}

class SettingsBody extends StatelessWidget {
  command(osname, nname) async {
    print(osname);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    name = "Shivam Gupta";
    mail = "shivamguptasg1808@gmail.com";
    ip = "192.168.1.205";

    return SafeArea(
      minimum: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/icons/avtar.webp'),
              radius: 80,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              name,
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: size.height * 0.02),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Text(
                    "User Settings",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text("Mail Id:"),
                      subtitle: Text(mail),
                      leading: Icon(Icons.mail),
                      trailing: Icon(Icons.edit),
                      onTap: () {
                        edit(context, "Mail Id");
                      },
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text("Docker Server IP:"),
                      subtitle: Text(ip),
                      leading: Icon(Icons.network_check),
                      trailing: Icon(Icons.edit),
                      onTap: () {
                        edit(context, "Docker Server IP");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
