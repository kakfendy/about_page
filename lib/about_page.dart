import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me"),
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade50, Colors.teal.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Foto Profil di halaman bio
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/foto.jpg'),
                ),
                SizedBox(height: 20),

                // Nama Lengkap
                Text(
                  'Kevin Andreas Kurniawan Effendy',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade800,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),

                // NRP
                Text(
                  'NRP: 5026221039',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
                SizedBox(height: 20),

                // Funfact
                Text(
                  'Funfact: Punya banyak nama panggilan (kevin - kepin - andre - fendi - pendi - ......)',
                  style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
