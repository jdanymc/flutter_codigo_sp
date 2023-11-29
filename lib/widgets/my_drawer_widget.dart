import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        DrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/2832382/pexels-photo-2832382.jpeg"),
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white12,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1848565/pexels-photo-1848565.jpeg"),
                ),
                Text(
                  "Fiorella Gonzales Tapia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Administrador",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.people,
            color: Colors.black.withOpacity(0.6),
          ),
          title: Text("Mi Perfil"),
        ),
        ListTile(
          leading: Icon(
            Icons.file_copy,
            color: Colors.black.withOpacity(0.6),
          ),
          title: Text("Portafolio General"),
        ),
        ListTile(
          leading: Icon(
            Icons.lock,
            color: Colors.black.withOpacity(0.6),
          ),
          title: Text("Cambiar Contraseña"),
        ),
        Divider(
          indent: 12.0,
          endIndent: 12.0,
        ),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: Colors.black.withOpacity(0.6),
          ),
          title: Text("Salir del App"),
        ),
      ]),
    );
  }
}
