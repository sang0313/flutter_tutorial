import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale('en'),
        Locale('zh', 'TW'),
        Locale.fromSubtags(
            languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
        Locale('zh'),
      ],
      fallbackLocale: Locale('en'),
      path: 'assets/locales',
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
