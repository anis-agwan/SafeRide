import 'package:flutter/material.dart';
import 'package:safe_ride/view/SplashScreen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    child: MaterialApp(
      title: 'Safe Ride Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue
      ),
      home: const MySplashScreen()
    )
  ));
}

class MyApp extends StatefulWidget {
  final Widget? child;

  const MyApp({this.child});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }


  @override 
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key  = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: key, child: widget.child!);
  }
}
