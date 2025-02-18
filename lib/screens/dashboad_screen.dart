import 'package:dark_light_button/dark_light_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/global_values.dart';

class DashboadScreen extends StatelessWidget {
  const DashboadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido"),
        actions: [],
      ),
      /*body:
       DarlightButton(
          type: Darlights.DarlightFour,
          options: DarlightFourOption(),
          onChange: (value) {
            GlobalValues.themeApp = ThemeMode.dark;
          }),
          */
      drawer: Drawer(
          child: ListView(children: [
        UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pravatar.cc/207"),
            ),
            accountName: Text('Jonathan Rodriguez Romero'),
            accountEmail: Text("21030021@itcelaya.edu.mx")),
        ListTile(
          leading: Icon(Icons.design_services),
          title: Text("Practica Figma"),
          subtitle: Text("Fronted App"),
          trailing: Icon(Icons.chevron_right),
        )
      ])),
      //endDrawer: Drawer(),
    );
  }
}
