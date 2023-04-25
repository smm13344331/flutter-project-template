import 'package:flutter/material.dart';
import 'package:project_template/localization/generated/l10n.dart';
import 'package:project_template/providers/home_provider.dart';
import 'package:project_template/routes/route_navigator.dart';
import 'package:project_template/ui/widgets/base_scaffold.dart';
import 'package:provider/provider.dart';

import '../../helpers/helpers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final _homeProvider = Provider.of<HomeProvider>(context,listen: false);
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: Center(
            child: Stack(
      children: [
        Center(child: Text(S.current.home)),
        Positioned(
          bottom: 60,
          left: 100,
          right: 100,
          child: InkWell(
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(Colors.yellow)),
              child: Text(
                S.current.profile,
                style: app.styles.button,
              ),
              onPressed: () => _homeProvider.openProfile(context),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 100,
          right: 100,
          child: InkWell(
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(Colors.yellow)),
              child: Text(
                S.current.register,
                style: app.styles.button,
              ),
              onPressed: () => _homeProvider.openRegister(context),
            ),
          ),
        ),
      ],
    )));
  }
}
