import 'package:flutter/material.dart';
import 'package:project_template/localization/generated/l10n.dart';
import 'package:project_template/ui/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: Center(child: Text(S.current.profile)));
  }
}
