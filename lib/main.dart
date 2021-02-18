import 'package:flutterProject1/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Sign in';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text(_title,style:TextStyle(fontSize:23),),
        backgroundColor: Colors.red),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Card(
        child: Container(
          child: Container(
            width: 370,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintText: 'Email'),
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintText: 'Password'),
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 23, 8, 0),
                      child: Container(
                          width: 400,
                          height: 38,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                            color: Colors.red,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()),
                              );
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 20,color: Colors.white),
                            )
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Container(
                        child: Text(
                          "Need an account ? Register",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Container(
                        child: Text(
                          "Forget password ?",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

