import 'package:flutter/material.dart';

class AdminLoginPage extends StatelessWidget {
  final logoColor = const Color(0xFF008F51);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 143, 218, 184),
        leading: IconButton(
          color: logoColor,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => HomeScreen()),
            // );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: logoColor,
            onPressed: () {
              // Add your search logic here
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu_sharp),
            color: logoColor,
            onPressed: () {
              // Add your menu logic here
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: logoColor,
              width: 2.0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Admin Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              buildTextField('User ID', color: logoColor),
              const SizedBox(height: 10),
              buildTextField('Password', isPassword: true, color: logoColor),
              const SizedBox(height: 20),
              buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, {bool isPassword = false, Color? color}) {
    return Container(
      width: 260,
      height: 40,
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: color,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.black, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.black, width: 2.0),
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        // Add your login logic here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: logoColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        minimumSize: const Size(160, 36),
      ),
      child: const Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }
}
