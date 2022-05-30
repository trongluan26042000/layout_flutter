import 'package:flutter/material.dart';

void main() => runApp(TooltipsPage());

class TooltipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tooltip Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tooltipTheme: const TooltipThemeData(
           decoration: ShapeDecoration(
            color: Color(0xFF232F34),
            shape: StadiumBorder(),
          ),
          textStyle: TextStyle(color: Colors.white),
        ),
      ),
      home:const Scaffold(
        body: Center(
          child: Tooltip(
            message: 'Play',
            child: Icon(Icons.play_arrow),
          ),
        ),
      ),
    );
  }
}