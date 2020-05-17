import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theming/ThemeModel.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Themes Demo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.color_lens),
                      Text('Toggle Theme'),
                    ],
                  ),
                  onPressed: () {
                    // Button Action
                    Provider.of<ThemeModel>(context, listen: false)
                        .toggleTheme();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
