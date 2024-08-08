import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/user.dart';
import 'package:flutter_application_4/screen/user_details.dart';

class UseCard extends StatelessWidget {
  final User user;
  final String imagePath;
  const UseCard({
    super.key,
    required this.user,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1.5, color: Colors.blue),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(imagePath),
              ),
            ),
            Column(
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  user.email,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetails(
                          user: user,
                          imagePath: imagePath,
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
          ],
        ),
      ),
    );
  }
}
