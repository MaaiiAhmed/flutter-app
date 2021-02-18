import 'package:flutter/material.dart';

import 'home.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 23),
          ),
          backgroundColor: Colors.red,
        ),
        body: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/2.4,
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      "https://i.pinimg.com/originals/cc/f2/1b/ccf21b59d4585c9dd8a6363abe567847.jpg",
                    ),
                    Align(
                      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/avatar.png"),
                          radius: 65,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Mai Ahmed",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Frontend Developer",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.red,
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,40,0,0),
                child: SizedBox(
                  
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 25, 0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, saepe sapientem eu nam. Qui ne assum electram expetendis, omittam deseruisse consequuntur ius an,",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 23, 8, 0),
                        child: Container(
                            width: 300,
                            height: 40,
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20.0)),
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                },
                                child: Text(
                                  'Posts',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ))),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
