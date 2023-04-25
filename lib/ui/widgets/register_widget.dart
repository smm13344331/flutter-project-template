// stateless widget for registering a new user
import 'package:flutter/material.dart';
import 'package:project_template/localization/generated/l10n.dart';

import '../../helpers/helpers.dart';
import 'base_scaffold.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: S.of(context).register,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    S.of(context).registrationCaption,
                    style: app.styles.headline6,
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: S.of(context).email,
                  ),
                  style: app.styles.bodyText1,
                ),
                const SizedBox(height: 16), // space between fields
                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: S.of(context).password,
                  ),
                  style: app.styles.bodyText1,
                ),
                const SizedBox(height: 26), // space between fields
              ],
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
                    S.of(context).register,
                    style: app.styles.button,
                  ),
                  onPressed: () => app.routeNavigator.pop(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
