import 'package:flutter/material.dart';
import 'package:tut2_multiple_widgets/features/home/presentation/custom_drawer.dart';
import 'package:tut2_multiple_widgets/features/home/presentation/row_card.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  /// Funktion, um unsere BottomSheet aufzurufen
  /// Da wir in einem StatelessWidget sind, können wir nicht von überall auf den Context zugreifen,
  /// deshalb müssen wir den Context der Funktion übergeben
  void showModal(BuildContext context) {

    // Aufgruf der BottomSheet
    showModalBottomSheet(
        context: context,

        // Ich habe hier zum Gestalten des Widgets einen Container benutzt
        // mit 400px Höhe, runde Ecken, und einem weißen Hintergrund
        builder: (context) => Container(
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Unser Titel
                    const Text(
                      "Möchtest du einen Nutzer hinzufügen?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    // Unser Untertitel
                    const Text("Bitte gib einen Namen ein"),

                    // Hier könnten theoretisch andere Widgets mit rein
                    const Expanded(
                      child: SizedBox(),
                    ),

                    // Unser Button, um einen Nutzer hizuzufügen
                    SizedBox(
                        width: 500,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Hinzufügen"))),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Unser Drawer
        drawer: const CustomDrawer(),

        // Unser FloatingActionButton mit einem GestureDetector
        floatingActionButton: GestureDetector(
          onTap: () => showModal(context),
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.green),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
        
        // Die AppBar mit einem Titel
        appBar: AppBar(
          title: const Text("TUT-2 Bonusaufgabe"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [

                // Unsere Custom RowCard
                RowCard(
                  icon: Icons.cloud,
                  text: "Hochladen",
                  expandedWidget: Container(
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.2)),
                  ),
                ),
                RowCard(
                    icon: Icons.add,
                    text: "Nutzer hinzufügen",
                    expandedWidget: ElevatedButton(
                        onPressed: () {},
                        child: const Center(
                            child: Text(
                          "Nutzer hinzufügen",
                          style: TextStyle(fontSize: 10),
                        )))),
                RowCard(
                    icon: Icons.flash_on,
                    text: "Taschenlampe",
                    expandedWidget: Checkbox(value: true, onChanged: (val) {}))
              ],
            ),
          ),
        ));
  }
}
