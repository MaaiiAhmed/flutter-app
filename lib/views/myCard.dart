import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String imgLink;
  String text;
  MyCard({this.imgLink, this.text});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Image.network(widget.imgLink),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Text(
                            widget.text,
                            style: TextStyle(fontSize: 23),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 15, 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.thumb_up,
                            size: 22,
                            color: Colors.red,
                          ),
                        ),
                        Text("Like",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.comment,
                          size: 22,
                          color: Colors.red,
                        ),
                      ),
                      Text("Comment",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
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
