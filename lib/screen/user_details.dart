// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/user.dart';
import 'package:flutter_application_4/widgets/info_card.dart';
import 'package:flutter_application_4/widgets/text_card.dart';

class UserDetails extends StatelessWidget {
  final String imagePath;
  final User user;
  const UserDetails({
    required this.user,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID #${user.id}'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(imagePath),
                ),
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '@${user.username}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                infocard(
                    title: 'Email', description: user.email, icon: Icons.email),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textcard(text: 'street', subtext: user.address['street']),
                    Textcard(text: 'suite', subtext: user.address['suite']),
                    Textcard(text: 'city', subtext: user.address['city']),
                  ],
                ),
                infocard(
                    title: 'Phone', description: user.phone, icon: Icons.phone),
                infocard(
                    title: 'Wepsite',
                    description: user.website,
                    icon: Icons.web_stories),
                infocard(
                    title: 'Company',
                    description: user.company['name'],
                    icon: Icons.phone),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
