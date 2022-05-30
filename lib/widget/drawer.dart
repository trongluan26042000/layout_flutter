import 'package:flutter/material.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'App bar: bottom',
            )
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
})  {
  final color = Colors.red;
  return ListTile(
    title: Text(text, style: TextStyle(color: Colors.red)),
  );
}
