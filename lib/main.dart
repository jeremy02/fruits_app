import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruits_app/screens/main_screen.dart';
import 'package:fruits_app/utils/constants.dart';

void main() async{
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
        runApp(MyApp());
    });
}

class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    void initState() {
        super.initState();
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Constants.lightPrimary,
            statusBarIconBrightness: Brightness.light,
        ));
    }
    
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
            title: Constants.appName,
            theme: Constants.lightTheme,
            home: MainScreen(),
        );
    }
}