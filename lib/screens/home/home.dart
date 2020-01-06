import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_facebook_clone/screens/home/new_post.dart';
import 'package:play_facebook_clone/widgets/avatar_widget.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Material(
          color: Colors.white,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  'facebook เทียม 100%',
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.bold),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Do something
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chat,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Do something
                    },
                  ),
                ],
                expandedHeight: 50.0,
                floating: true,
                pinned: false,
                snap: true,
                elevation: 50,
                backgroundColor: Colors.white,
                // flexibleSpace: FlexibleSpaceBar(
                //   centerTitle: true,
                //   title: Text('Title',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 16.0,
                //       )),
                //   background: Image.network(
                //     'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
              new SliverList(
                delegate: new SliverChildListDelegate(_buildPostBlock(context)),
              ),
              new SliverList(
                delegate: new SliverChildListDelegate(_buildStoryBlock()),
              ),
              new SliverList(
                delegate: new SliverChildListDelegate(_buildList(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List _buildPostBlock(context) {
  List<Widget> listItems = List();
  listItems.add(
    new Container(
      height: 100.0,
      color: Colors.white10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 12.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Avatar(),
                ),
                FlatButton(
                  onPressed: () {
                    /*...*/
                    _openAddEntryDialog(context);
                  },
                  child: Text('นายคิดอะไรอยู่?'),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade200,
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        Text('Live'),
                      ],
                    ),
                    onPressed: () => null,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        Text('Photo'),
                      ],
                    ),
                    onPressed: () => null,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        Text('Check In'),
                      ],
                    ),
                    onPressed: () => null,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
  return listItems;
}

void _openAddEntryDialog(context) {
  Navigator.of(context).push(new MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return NewPost();
      },
      fullscreenDialog: true));
}

List _buildStoryBlock() {
  List<Widget> listItems = List();
  listItems.add(
    new Container(
      // margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade200,
        ),
        color: Colors.white,
      ),
      child: ListView(
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        children: _buildStoryList(10),
      ),
    ),
  );
  return listItems;
}

List _buildList(int count) {
  List<Widget> listItems = List();
  for (int i = 0; i < count; i++) {
    listItems.add(
      new Container(
        child: Container(
          // height: 200,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Avatar(),
                    ),
                    Flexible(
                      flex: 7,
                      fit: FlexFit.tight,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('prasom.t@gmail.com',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(
                              '1 min - Bangkok',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.more_horiz),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'แจ้งเกิดต้องไปอำเภอ แจ้งว่ารักเธอต้องทำยังไง 🤣🤣🤣?',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 250,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Image.network(
                                "https://placeimg.com/500/500/any",
                                fit: BoxFit.cover,
                              ),
                            ),
                            flex: 2,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Image.network(
                                        "https://placeimg.com/500/500/any",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: <Widget>[
                                          Image.network(
                                            "https://placeimg.com/500/500/any",
                                            fit: BoxFit.cover,
                                          )
                                        ],
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              ),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                    color: Colors.grey.shade200,
                  )),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up,
                              color: Colors.grey,
                              size: 16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '1,000,000',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        onPressed: () => null,
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '1,000,000 Comments',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        onPressed: () => null,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up,
                              color: Colors.grey,
                            ),
                            Text('Like'),
                          ],
                        ),
                        onPressed: () => null,
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.chat_bubble,
                              color: Colors.grey,
                            ),
                            Text('Comment'),
                          ],
                        ),
                        onPressed: () => null,
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              color: Colors.grey,
                            ),
                            Text('Share'),
                          ],
                        ),
                        onPressed: () => null,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  return listItems;
}

List _buildStoryList(int count) {
  List<Widget> listItems = List();
  for (int i = 0; i < count; i++) {
    listItems.add(
      new Container(
        width: 130.0,
        color: Colors.white,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.network(
                'https://placeimg.com/640/480/any',
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 5,
                left: 5,
                child: Avatar(),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                width: 100,
                child: Wrap(
                  children: <Widget>[
                    Text(
                      'Add to Story Test Wrap Wrap  Warp',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          margin: EdgeInsets.all(5),
        ),
      ),
    );
  }
  return listItems;
}
