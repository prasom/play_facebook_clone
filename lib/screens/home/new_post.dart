import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class NewPost extends StatefulWidget {
  NewPost({Key key}) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: const Text('New Post'),
        actions: [
          new FlatButton(
              onPressed: () {
                //TODO: Handle save
              },
              child: new Text('Share',
                  style: Theme.of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.black))),
        ],
      ),
      body: SlidingUpPanel(
        minHeight: 300,
        // collapsed: Container(
        //   color: Colors.white,
        //   child: Column(
        //     children: <Widget>[
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: <Widget>[
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: <Widget>[
        //               Padding(
        //                 padding:
        //                     const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
        //                 child: Text(
        //                   'sendersList[position]',
        //                   style: TextStyle(
        //                       fontSize: 22.0, fontWeight: FontWeight.bold),
        //                 ),
        //               ),
        //               Padding(
        //                 padding:
        //                     const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
        //                 child: Text(
        //                   'subjectList[position]',
        //                   style: TextStyle(fontSize: 18.0),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: <Widget>[
        //                 Text(
        //                   "5m",
        //                   style: TextStyle(color: Colors.grey),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Icon(
        //                     Icons.star_border,
        //                     size: 35.0,
        //                     color: Colors.grey,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //       Divider(
        //         height: 2.0,
        //         color: Colors.grey,
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: <Widget>[
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: <Widget>[
        //               Padding(
        //                 padding:
        //                     const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
        //                 child: Text(
        //                   'sendersList[position]',
        //                   style: TextStyle(
        //                       fontSize: 22.0, fontWeight: FontWeight.bold),
        //                 ),
        //               ),
        //               Padding(
        //                 padding:
        //                     const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
        //                 child: Text(
        //                   'subjectList[position]',
        //                   style: TextStyle(fontSize: 18.0),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: <Widget>[
        //                 Text(
        //                   "5m",
        //                   style: TextStyle(color: Colors.grey),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Icon(
        //                     Icons.star_border,
        //                     size: 35.0,
        //                     color: Colors.grey,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        panel: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                      child: Text(
                        'sendersList[position]',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                      child: Text(
                        'subjectList[position]',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "5m",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.star_border,
                          size: 35.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 2.0,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
