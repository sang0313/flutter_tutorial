import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('localization_str_06'.tr())),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'localization_str_01',
            textAlign: TextAlign.center,
          ).tr(namedArgs: {'lang': context.locale.toLanguageTag()}),
          Text(
            'localization_str_05',
            textAlign: TextAlign.center,
          ).tr(args: [context.locale.toLanguageTag()]),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () => (context.locale = Locale('en')),
                child: Text('localization_str_02').tr(),
              ),
              FlatButton(
                onPressed: () => (context.locale = Locale('zh', 'TW')),
                child: Text('localization_str_03').tr(),
              ),
              FlatButton(
                onPressed: () => (context.locale = Locale('zh')),
                child: Text('localization_str_04').tr(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
