import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f4fc),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Dashboard",
            style: TextStyle(color: Colors.white)),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Statistics",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 14),

            Row(
              children: [
                _statCard("Completed", "12", Icons.check_circle,
                    Colors.green),
                const SizedBox(width: 14),
                _statCard("Pending", "05", Icons.timer, Colors.orange),
              ],
            ),

            const SizedBox(height: 25),

            const Text("Weekly Performance",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ],
              ),
              child: const Center(
                child: Text(
                  "Graph Placeholder\n(Bar Chart / Line Chart)",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text("Today's Overview",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            _taskTile("Buy groceries", true),
            _taskTile("Workout 30 mins", true),
            _taskTile("Study Flutter", false),
          ],
        ),
      ),
    );
  }

  // Card for stats
  Widget _statCard(
      String title, String count, IconData icon, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2))
          ],
        ),
        child: Column(
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 8),
            Text(count,
                style: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold)),
            Text(title,
                style:
                    const TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  // Task Tile
  Widget _taskTile(String task, bool done) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(done ? Icons.check_circle : Icons.circle_outlined,
              color: done ? Colors.green : Colors.grey),
          const SizedBox(width: 12),
          Text(task,
              style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
