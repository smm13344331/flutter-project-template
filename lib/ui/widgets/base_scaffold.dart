import 'package:flutter/material.dart';
import 'package:project_template/providers/app_provider.dart';
import 'package:provider/provider.dart';

import 'package:project_template/helpers/helpers.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold({Key? key, this.title, required this.body})
      : super(key: key);

  final String? title;
  final Widget body;

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        appBar: AppBar(
            backgroundColor: app.colors.primary,
            centerTitle: true,
            title: Text(
              widget.title ?? 'Template',
              style: app.styles.headline6.copyWith(fontWeight: FontWeight.bold),
            )),
        body: widget.body,
      );
    });
  }
}
