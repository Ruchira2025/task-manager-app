import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f4fc),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Profile",
            style: TextStyle(color: Colors.white)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.deepPurple.shade100,
              child: const Icon(Icons.person,
                  size: 70, color: Colors.deepPurple),
            ),

            const SizedBox(height: 20),

            const Text("Ruchira Raul",
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("ruchira@email.com",
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),

            _infoTile(Icons.person, "Full Name", "Ruchira Raul"),
            _infoTile(Icons.email, "Email", "ruchira@email.com"),
            _infoTile(Icons.phone, "Phone", "+91 9876543210"),

            const SizedBox(height: 25),

            ElevatedButton.icon(
              onPressed: () {
                _logoutDialog(context);
              },
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _infoTile(IconData icon, String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 12, color: Colors.grey.shade700)),
              Text(value,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }

  void _logoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text("Logout"),
        content: const Text("Are you sure you want to logout?"),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel")),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple),
            child: const Text("Logout",
                style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
