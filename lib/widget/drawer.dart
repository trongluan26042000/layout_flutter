import 'package:flutter/material.dart';
import 'package:layout_flutter/page/app_bar_bottom_page.dart';
import 'package:layout_flutter/page/app_bar_top_page.dart';
import 'package:layout_flutter/page/backdrop_page.dart';
import 'package:layout_flutter/page/banners_page.dart';
import 'package:layout_flutter/page/bottom_navigation_page.dart';
import 'package:layout_flutter/page/button_floating_action_button_page.dart';
import 'package:layout_flutter/page/buttons.dart';
import 'package:layout_flutter/page/cards_page.dart';
import 'package:layout_flutter/page/checkboxes_page.dart';
import 'package:layout_flutter/page/chips_page.dart';
import 'package:layout_flutter/page/date_pickers_page.dart';
import 'package:layout_flutter/page/dialogs_page.dart';
import 'package:layout_flutter/page/dividers_page.dart';
import 'package:layout_flutter/page/image_lists_page.dart';
import 'package:layout_flutter/page/lists_page.dart';
import 'package:layout_flutter/page/menus_page.dart';
import 'package:layout_flutter/page/navigation_drawer_page.dart';
import 'package:layout_flutter/page/progress_indicators_page.dart';
import 'package:layout_flutter/page/radio_buttons_page.dart';
import 'package:layout_flutter/page/sheets_bottom_page.dart';
import 'package:layout_flutter/page/sliders_page.dart';
import 'package:layout_flutter/page/snackbars_page.dart';
import 'package:layout_flutter/page/switches_page.dart';
import 'package:layout_flutter/page/tabs_page.dart';
import 'package:layout_flutter/page/text_fields_page.dart';
import 'package:layout_flutter/page/time_pickers_page.dart';
import 'package:layout_flutter/page/tooltips_page.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
             SizedBox(height: 48),
            buildMenuItem(
                text: 'App Bar: Bottom',
                    onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'App Bar: Top',
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Backdrop',
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Banners',
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Buttons: floating action button',
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Cards',
              onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Checkboxes',
              onClicked: () => selectedItem(context, 6),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Chips',
              onClicked: () => selectedItem(context, 7),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Data tables',
              onClicked: () => selectedItem(context, 8),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Date pickes',
              onClicked: () => selectedItem(context, 9),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Dialogs',
              onClicked: () => selectedItem(context, 10),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Dividers',
              onClicked: () => selectedItem(context, 11),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Image lists',
              onClicked: () => selectedItem(context, 12),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Menus',
              onClicked: () => selectedItem(context, 13),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Navigator drawer',
              onClicked: () => selectedItem(context, 14),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Navigator rail',
              onClicked: () => selectedItem(context, 15),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Progress indicators',
              onClicked: () => selectedItem(context, 16),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Radio buttons',
              onClicked: () => selectedItem(context, 17),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Sheets: bottom',
              onClicked: () => selectedItem(context, 18),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Sheets: side',
              onClicked: () => selectedItem(context, 19),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Sliders',
              onClicked: () => selectedItem(context, 20),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Snackbars',
              onClicked: () => selectedItem(context, 21),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Switches',
              onClicked: () => selectedItem(context, 22),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Tabs',
              onClicked: () => selectedItem(context, 23),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Text fields',
              onClicked: () => selectedItem(context, 24),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Time pickers',
              onClicked: () => selectedItem(context, 25),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
                text: 'Tooltips',
              onClicked: () => selectedItem(context, 26),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AppBarBottomPage() ,
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AppBarTopPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BackDropPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BannersPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BottomNavigationPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ButtonFloatingActionButtonPage(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ButtonsPage(),
        ));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CardsPage(),
        ));
        break;
      case 8:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CheckBoxesPage(),
        ));
        break;
      case 9:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ChipsPage(),
        ));
        break;
      case 10:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DatePickersPage(),
        ));
        break;
      case 11:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DialogsPage(),
        ));
        break;
      case 12:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DividerThemeDemo(),
        ));
        break;
      case 13:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ImageList(),
        ));
        break;
      case 14:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ListDemo(),
        ));
        break;
      case 15:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DropdownMenuDemo(),
        ));
        break;
      case 16:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NavigationDrawerPage(),
        ));
        break;
      case 17:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProgressIndicators(),
        ));
        break;
      case 18:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RadioButtonPage(),
        ));
        break;
      case 19:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SheetsBottomPage(),
        ));
        break;
      case 20:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SlidersPage() ,
        ));
        break;
      case 21:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SnackBarsPage() ,
        ));
        break;
      case 22:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SwitchesPage(),
        ));
        break;
      case 23:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TabsPage(),
        ));
        break;
      case 24:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TextFieldsPage(),
        ));
        break;
      case 25:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TimePickersPage(),
        ));
        break;
      case 26:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TooltipsPage(),
        ));
        break;
    }
  }
}

Widget buildMenuItem({
  required String text,
  VoidCallback? onClicked,
})  {
  final color = Colors.white;
  final hoverColor = Colors.white70;
  return ListTile(
    title: Text(text, style: TextStyle(color: color)),
    onTap: onClicked,
  );
}
