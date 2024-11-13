import 'package:flutter/material.dart';
import 'about_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade800, Colors.teal.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto Profil di halaman utama
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/foto.jpg'),
              ),
              SizedBox(height: 20),

              // Sapaan
              Text(
                'Hi!',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "I'm Kevin Effendy",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white70,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),

              // Tombol "About Me"
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutPage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Text(
                    'About Me!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
