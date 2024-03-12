import 'package:catbreeds/config/env.dart';
import 'package:catbreeds/config/router/router_path.dart';
import 'package:catbreeds/config/strings.dart';
import 'package:catbreeds/config/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:catbreeds/config/router/router.dart' as router;

Future<void> runCatBreeds() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await Env.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeDataApp.themeData,
      initialRoute: AppRoutes.splash,
      onGenerateRoute: router.generateRoute,
    );
  }
}
