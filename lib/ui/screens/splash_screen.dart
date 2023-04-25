import 'package:flutter/material.dart';
import 'package:project_template/localization/generated/l10n.dart';
import 'package:project_template/providers/app_provider.dart';
import 'package:project_template/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final _appProvider = Provider.of<AppProvider>(context, listen: false);

  @override
  void initState() {
    _appProvider.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(body: Center(child: Text(S.current.splash)));
  }
}
