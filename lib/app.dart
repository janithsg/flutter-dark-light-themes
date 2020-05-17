import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/Homepage.dart';
import './theming/AppTheme.dart';
import './theming/ThemeModel.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: Provider.of<ThemeModel>(context, listen: true).currentTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
