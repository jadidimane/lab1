import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundImage: AssetImage("images/messages1.jpg"),
        radius: 100,
      ),
      SizedBox(
        height: 30,
      ),
      Text("Jadid imane", style: Theme.of(context).textTheme.displayLarge),
      SizedBox(
        height: 30,
      ),
      Text(
        "jima@gmail.com",
        style: TextStyle(fontSize: 30, color: Colors.green),
      ),
      SizedBox(height: 30)
    ]));
  }
}
