import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/widgets/my_drawer_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  int gender = 1;
  saveSharedPreferences() {
    SharedPreferences _prefs = SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shared Preferences App",
        ),
      ),
      drawer: MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Configuración General",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre Completo",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Dirección Actual",
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            //Switch(value: false, onChanged: (bool value) {}),
            SwitchListTile(
                value: isDarkMode,
                title: Text("Modo Oscuro"),
                onChanged: (bool value) {
                  isDarkMode = value;
                  setState(() {});
                }),
            // Radio(
            //   value: 1,
            //   groupValue: 1,
            //   onChanged: (int? value) {},
            // ),
            RadioListTile(
                value: 1,
                title: Text("Male"),
                groupValue: gender,
                onChanged: (int? value) {
                  gender = value!;
                  setState(() {});
                }),
            RadioListTile(
                value: 2,
                title: Text("Female"),
                groupValue: gender,
                onChanged: (int? value) {
                  gender = value!;
                  setState(() {});
                }),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    )),
                onPressed: () {},
                icon: Icon(Icons.save, color: Colors.white),
                label: Text(
                  "Guardar Data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
