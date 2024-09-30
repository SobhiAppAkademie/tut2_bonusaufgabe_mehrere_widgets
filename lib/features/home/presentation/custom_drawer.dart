import 'package:flutter/material.dart';


// Unser CustomDrawer erstellt mit einem Container
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,

      // Die SafeArea ist hier wichtig, da sonst die Widgets über die Nodge des iPhones anfangen
      child: SafeArea(
        child: Column(
          children: [

            // Unser Titel
            const Text(
              "Listeinträge",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
            ),

            // Unsere Einträge
            Expanded(
              child: ListView(
                children: const [

                  // Erster Eintrag
                  ListTile(
                    title: Text("Flutter macht spaß"),
                    leading: Icon(Icons.heat_pump_rounded, color: Colors.green,),
                    trailing: Icon(Icons.remove, color: Colors.red,),
                  ),

                  // Zweiter Eintrag
                   ListTile(
                    title: Text("AppAkademie ist cool"),
                    leading: Icon(Icons.star, color: Colors.yellow,),
                    trailing: Icon(Icons.remove, color: Colors.red,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
