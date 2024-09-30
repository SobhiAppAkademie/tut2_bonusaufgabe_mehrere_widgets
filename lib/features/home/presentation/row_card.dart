import 'package:flutter/material.dart';

/// Wir haben die RowCard in ein StatelessWidget umgewandelt und ausgelagert, um 
/// Copy-Paste-Code zu reduzieren und redunant zu bleiben. Somit können wir jedes
/// mal RowCard aufrufen, um es zu benutzen
class RowCard extends StatelessWidget {
  const RowCard(
      {super.key,
      required this.icon,
      required this.text,
      required this.expandedWidget});

  final IconData icon;
  final String text;
  final Widget expandedWidget;


  @override
  Widget build(BuildContext context) {

    // Wie in der Aufgabe: Icon -> Text -> Expanded
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(width: 10),
            Text(text),
            const SizedBox(width: 30),
            Expanded(child: expandedWidget)
          ],
        ),
      ),
    );
  }
}
