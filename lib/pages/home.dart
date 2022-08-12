import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_practice/widgets/avatar.dart';
import '../data/mock_data.dart';
import '../models/user.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var data = allData();
  List<User>? dataView = [];
  List<Card>? dataCard = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      for (var x in data) {
        dataView?.add(User.fromJson(x));
      }
      dataCard = dataView!
          .map(
            (e) => Card(
              child: Row(
                children: [
                  avatar(e.avatar!),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text("${e.firstName!} ${e.lastName!}"),
                      ),
                      Text(e.role!)
                    ],
                  ),
                ],
              ),
            ),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: const Center(
            child: FaIcon(FontAwesomeIcons.plus),
          ),
        ),
        appBar: AppBar(
          title: Text("The Interview"),
        ),
        body: ListView(
          //children: [],
          children: (dataView == null)
              ? [
                  const Card(
                    child: Text("loading..."),
                  )
                ]
              : dataCard!,
        ));
  }
}
