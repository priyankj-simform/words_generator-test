import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sneakpeek/app_config.dart';
import 'package:sneakpeek/flavors/flavor.dart';
import 'package:sneakpeek/flavors/flavor_config.dart';
import 'package:sneakpeek/flavors/flavor_values.dart';
import 'package:sneakpeek/utils/helpers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setAppOrientation();
  setupLogging();
  setSystemIcons(dark: false);
  debugPaintSizeEnabled = false;
  runApp(const FlavoredApp());
}

class FlavoredApp extends StatelessWidget {
  const FlavoredApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlavorConfig(
      flavor: Flavor.dev,
      values: FlavorValues(
        baseUrl: 'https://simform.com',
      ),
      child: const AppConfig(),
    );
  }
}
