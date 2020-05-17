import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './app.dart';
import './theming/ThemeModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeModel>(
      create: (BuildContext context) => ThemeModel(),
      child: App(),
    ),
  );
}
