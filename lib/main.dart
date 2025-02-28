import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hr_dashboard_mobile_app/screens/on_boarding_screen/on_boarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle().copyWith(
      statusBarColor: Colors.deepPurple,
    ),
  );

  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HR Dashboard",
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.deepPurple,
        secondaryHeaderColor: Colors.black,
        textSelectionTheme: const TextSelectionThemeData().copyWith(
          selectionHandleColor: Colors.deepPurple,
          selectionColor: Colors.deepPurple.withValues(
            alpha: 0.4,
          ),
          cursorColor: Colors.deepPurple,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
