import 'package:flutter/material.dart';
import 'package:sneakpeek/app.dart';
import 'package:sneakpeek/utils/extensions.dart';

class AppConfig extends StatelessWidget {
  const AppConfig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.hideKeyboard,
      child: Builder(
        builder: (ctx) => const SneakPeekApp(),
      ),
    );
  }
}
