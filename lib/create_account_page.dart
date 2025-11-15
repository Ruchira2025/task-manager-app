import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f2ff),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Create Account",
            style: TextStyle(color: Colors.white)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            Icon(Icons.person_add_alt_1,
                size: 95, color: Colors.deepPurple),

            const SizedBox(height: 30),

            _inputBox(name, "Full Name", Icons.person),
            const SizedBox(height: 14),

            _inputBox(email, "Email", Icons.email),
            const SizedBox(height: 14),

            _inputBox(pass, "Password", Icons.lock, isPass: true),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // go back to login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: const Text("Create Account",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _inputBox(TextEditingController controller, String label,
      IconData icon, {bool isPass = false}) {
    return TextField(
      controller: controller,
      obscureText: isPass,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.white,
        border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
