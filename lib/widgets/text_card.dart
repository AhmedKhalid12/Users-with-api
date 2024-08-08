import 'package:flutter/material.dart';

class Textcard extends StatelessWidget {
  final String text;
  final String subtext;

  const Textcard({super.key, required this.text, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtext,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
