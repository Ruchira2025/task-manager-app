import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'task_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  bool isLoading = false;

  void showMsg(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  Future<void> loginUser() async {
    setState(() => isLoading = true);

    final user = ParseUser(emailCtrl.text.trim(), passCtrl.text.trim(), emailCtrl.text.trim());
    var response = await user.login();

    setState(() => isLoading = false);

    if (response.success) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => TaskPage()),
      );
    } else {
      showMsg(response.error!.message);
    }
  }

  Future<void> signupUser() async {
    setState(() => isLoading = true);

    final user = ParseUser(emailCtrl.text.trim(), passCtrl.text.trim(), emailCtrl.text.trim());
    var response = await user.signUp();

    setState(() => isLoading = false);

    if (response.success) {
      showMsg("Signup successful! Please login.");
    } else {
      showMsg(response.error!.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4edff),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                // App Logo
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.deepPurple.shade100,
                  child: Icon(Icons.task_alt, size: 70, color: Colors.deepPurple),
                ),
                SizedBox(height: 25),

                Text(
                  "Task Manager",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: 35),

                // Email Field
                TextField(
                  controller: emailCtrl,
                  decoration: InputDecoration(
                    labelText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                // Password Field
                TextField(
                  controller: passCtrl,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 25),

                // Login Button
                ElevatedButton(
                  onPressed: isLoading ? null : loginUser,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text("Login", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 12),

                // Signup Button
                TextButton(
                  onPressed: signupUser,
                  child: Text("Create an account"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
