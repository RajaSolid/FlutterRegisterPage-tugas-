import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil Saya")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profil.jpeg"),
            ),
            Text(
              "Pengguna Bug",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text("raff@email.com", style: TextStyle(color: Colors.grey[700])),

            Text(
              "Hallo! Saya menggunakan Aplikasi!",
              style: TextStyle(fontSize: 20),
            ),
            
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("0819-1711-2146"),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text("Pelajar SMK"),
          ),
          ],
        ),

      ),
    );
  }
}
