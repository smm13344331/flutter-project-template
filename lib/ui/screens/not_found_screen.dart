import 'package:flutter/material.dart';
import 'package:project_template/helpers/helpers.dart';

class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  NotFoundScreenState createState() => NotFoundScreenState();
}

class NotFoundScreenState extends State<NotFoundScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Page Not Found!',
            textAlign: TextAlign.center,
            style: app.styles.headline5,
          ),
        ],
      ),
    );
  }
}
