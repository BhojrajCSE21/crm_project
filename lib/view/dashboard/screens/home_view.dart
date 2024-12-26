import 'package:crm_project/view/menu/widgets/main_menu.dart'; // Import the MainMenuDrawer from main_menu.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRM Dashboard'),
        backgroundColor: Colors.blue,
      ),
      drawer: MainMenuDrawer(), // Use the MainMenuDrawer from main_menu.dart
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildDashboardTile(
              context,
              icon: Icons.dashboard,
              label: 'Dashboard',
              color: Colors.orange,
            ),
            _buildDashboardTile(
              context,
              icon: Icons.leaderboard,
              label: 'Leads',
              color: Colors.green,
            ),
            _buildDashboardTile(
              context,
              icon: Icons.contacts,
              label: 'Contacts',
              color: Colors.blue,
            ),
            _buildDashboardTile(
              context,
              icon: Icons.account_circle,
              label: 'Accounts',
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardTile(BuildContext context,
      {required IconData icon, required String label, required Color color}) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$label tapped')),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
