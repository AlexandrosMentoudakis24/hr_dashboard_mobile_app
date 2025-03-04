import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hr_dashboard_mobile_app/widgets/_global/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:hr_dashboard_mobile_app/utils/screen_size_utils/screen_size_utils.dart';
import 'package:hr_dashboard_mobile_app/screens/clock_in_screen/clock_in_screen.dart';
import 'package:hr_dashboard_mobile_app/screens/tasks_screen/tasks_screen.dart';
import 'package:hr_dashboard_mobile_app/screens/home_screen/home_screen.dart';

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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> _screens = [
    const HomeScreen(),
    const ClockInScreen(),
    const TasksScreen(),
  ];

  late Widget _currentScreen;

  void _onScreenChangeHandler(int newIdx) {
    setState(() {
      _currentScreen = _screens[newIdx];
    });
  }

  @override
  void initState() {
    _currentScreen = _screens[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuerySizes = MediaQuery.sizeOf(context);
    final systemStatusBarHeight = MediaQuery.viewPaddingOf(context).top;

    final screenSizes = ScreenSizeUtils.getAvailableScreenSize(
      ctx: context,
      calcAppBarHeight: false,
      calcBottomNavBarHeight: true,
    );

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
      home: Scaffold(
        body: SizedBox(
          height: mediaQuerySizes.height,
          width: mediaQuerySizes.width,
          child: Column(
            children: [
              Container(
                height: screenSizes.height - systemStatusBarHeight,
                width: screenSizes.width,
                margin: EdgeInsets.only(
                  top: systemStatusBarHeight,
                ),
                child: _currentScreen,
              ),
              BottomNavBar(
                onItemTapHandler: (newIdx) {
                  _onScreenChangeHandler(newIdx - 1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
