import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text_scroll/text_scroll.dart';

void main() {
  runApp(AllEventsScreen());
}

class AllEventsScreen extends StatefulWidget {
  const AllEventsScreen({
    super.key,
  });

  @override
  State<AllEventsScreen> createState() => _AllEventsScreenState();
}

class _AllEventsScreenState extends State<AllEventsScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        primaryIconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      home: NavigationPage(),
    );
  }
}
