import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration( 
            gradient: const LinearGradient( 
              colors: [Color.fromARGB(255, 13, 50, 99), Color.fromARGB(255, 106, 142, 199)], 
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(color: Colors.white54, width: 1), 
            borderRadius: const BorderRadius.all(Radius.circular(20)), 
            boxShadow: const [ 
              BoxShadow(
                color: Color.fromARGB(100, 0, 0, 0),
                blurRadius: 15,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: const AssetImage('assets/images/fotoku.jpeg'), 
                child: const Placeholder( 
                  fallbackHeight: 120, 
                  fallbackWidth: 120, 
                  color: Colors.white30,
                ), 
              ),
              const SizedBox(height: 15), 
              const FlutterLogo(size: 60), 
              const SizedBox(height: 25), 
              const Text(
                'Josephine Antonia',
                style: TextStyle(
                  fontSize: 28, 
                  fontWeight: FontWeight.w900, 
                  color: Colors.white,
                  letterSpacing: 1.5 
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'NIM: 2341760064',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              const Text(
                'Jurusan: Teknologi Informasi',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              const SizedBox(height: 30), 
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Color(0xFFC5CAE9)),
                  SizedBox(width: 8),
                  Text('joseephineez@gmail.com', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 25),
                  Icon(Icons.phone, color: Color(0xFFC5CAE9)),
                  SizedBox(width: 8),
                  Text('+62 81330650563', style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}