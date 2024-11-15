import 'package:flutter/material.dart';
import 'package:lab1/screens/cards.view.dart';
import 'package:lab1/screens/home.view.dart';
import 'package:lab1/screens/login.view.dart';
import 'package:lab1/screens/profile.view.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currIndex = 0;

  List<Widget> pages = [HomeView(), LoginView(), CardsView(), ProfileView()];
  void changepage(int selectedIndex) {
    setState(() {
      currIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Multitask Application",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 30)),
          backgroundColor: Colors.blue),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: IndexedStack(
                index: currIndex,
                children: pages,
              ))),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currIndex,
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.white,
          onTap: changepage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: "Cards"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_off_rounded), label: "Profil"),
          ]),
    );
  }
}
