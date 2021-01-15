import 'package:Reusable_Flutter/screens/DrawerMap.dart';
import 'package:Reusable_Flutter/screens/floatingButton.dart';
import 'package:flutter/material.dart';

class User {
  String name;
  String description;
  String status;
  int id;
  User({
    this.name,
    this.description,
    this.status,
    this.id,
  });
}

class ForEach extends StatefulWidget {
  ForEach({Key key}) : super(key: key);

  @override
  _ForEachState createState() => _ForEachState();
}

class _ForEachState extends State<ForEach> {
  TextEditingController _controller;

  List<Widget> initLoader = [];
  List<User> visible = [];
  List<User> _lister = [
    User(
        name: "Jona",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "offline"),
    User(
        id: 1,
        name: "Vona",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "online"),
    User(
        id: 2,
        name: "Mona",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "online"),
    User(
        id: 3,
        name: "qona",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "offline"),
    User(
        id: 4,
        name: "Roana",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "online"),
    User(
        id: 5,
        name: "Jona",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "offline"),
    User(
        id: 6,
        name: "Vona",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "online"),
    User(
        id: 7,
        name: "Mona",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "online"),
    User(
        id: 8,
        name: "qona",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "offline"),
    User(
        id: 9,
        name: "Roana",
        description:
            "Magna magna adipisicing sint occaecat laborum. Deserunt nulla ex sint amet consectetur incididunt. Commodo veniam aliqua exercitation reprehenderit ea minim. Amet ea incididunt consectetur cillum ut ipsum veniam ea in deserunt. Deserunt nisi qui anim deserunt sunt non sit irure adipisicing nisi. Officia veniam amet sint proident consectetur voluptate. Non non ea nisi duis aliqua esse ex occaecat nostrud.",
        status: "online"),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

    cardLoader();
    visible = _lister;
  }

//it loops through the object list and apply the data of the object
// to every buildCard
  void cardLoader() {
    _lister.forEach((User user) {
      initLoader.add(_buildCards(user: user));
    });
  }

  Widget _buildCards({User user}) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black,
          child: Text(
            "${user.name[0]}",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        title: Text(
          "${user.name} ",
          style: TextStyle(fontSize: 15),
        ),
        subtitle: Container(
          child: Text(
            "${user.description} ",
            maxLines: 1,
            textHeightBehavior: TextHeightBehavior(),
            textWidthBasis: TextWidthBasis.parent,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        trailing: Text(
          "${user.status}",
          style: TextStyle(
            fontSize: 12,
            color: (user.status == 'offline') ? Colors.red : Colors.green,
          ),
        ),
      ),
    );
  }

  void chatSearch({String search}) {
    String search = _controller.text.trim();
    String lower = search.toLowerCase();
    visible = visible.where((element) {
      return element.name.toLowerCase().contains(lower);
    }).toList();
    if (search == "") {
      visible = _lister;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(
        onPressed: () {
          visible.shuffle();
          setState(() {});
        },
      ),
      drawer: DrawerMap(),
      appBar: AppBar(
        title: Text("ChatForEach"),
        backgroundColor: Colors.black,
        bottomOpacity: 20,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                controller: _controller,
                                onChanged: (value) {
                                  chatSearch(search: value);
                                  setState(() {});
                                },
                                decoration: InputDecoration.collapsed(
                                    hintText: "Search",
                                    hintStyle: TextStyle(color: Colors.black)),
                              ),
                            )),
                        Expanded(
                            child: IconButton(
                                icon: Icon(
                                  Icons.search,
                                ),
                                onPressed: () {
                                  chatSearch();
                                  setState(() {});
                                }))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Chat",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.green,
                                child: Center(
                                  child: Text(
                                    "${visible.length}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            status(
                                "${visible.where((element) => element.status == "online").length}",
                                Colors.green),
                            status(
                                "${visible.where((element) => element.status == "offline").length}",
                                Colors.red),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                  //you could also use a listView.builder
                  //and pass the index to cycle through the initLoader List
                  child: ListView(
                children:
                    visible.map((e) => _buildCards(user: e)).toSet().toList(),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Padding status(String stats, Color color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CircleAvatar(
        radius: 7,
        backgroundColor: color,
        child: Center(
          child: Text(
            "$stats",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
