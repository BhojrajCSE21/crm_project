import 'package:crm_project/view/leads/screens/lead.dart';
import 'package:flutter/material.dart';

class MainMenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(bottom: 0),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue, // Blue container color
            ),
            padding: EdgeInsets.only(
                top: 60, bottom: 20), // Adjust the top and bottom padding here
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Center vertically
              children: [
                SizedBox(width: 10), // Add minimal space to the left edge
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.menu,
                    size: 25,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 10), // Add spacing between the icon and text
                Text(
                  'Main Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Dashboard selected')),
              );
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.leaderboard),
            title: Text('Leads',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('New Leads'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('New Leads selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Export'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Export selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Change Status'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Change Status selected')),
                        );
                      },
                    ),
                    // Navigate to LeadsPage when tapped on Leads option
                    ListTile(
                      title: Text('View Leads'),
                      onTap: () {
                        Navigator.pop(context);
                        // Navigate to LeadsPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LeadsPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.contacts),
            title: Text('Contacts',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('New Contact'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('New Contact selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Export'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Export selected')),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('New Account'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('New Account selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Export'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Export selected')),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.business_center),
            title: Text('Opportunities',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('New'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('New selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Export'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Export selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Change Status'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Change Status selected')),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.bar_chart),
            title: Text('Report',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('New'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('New selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Export'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Export selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Change Status'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Change Status selected')),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Adding the Manage Users dropdown before Logout
          ExpansionTile(
            leading: Icon(Icons.manage_accounts),
            title: Text('Manage Users',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('New'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('New User selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Active'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Active Users selected')),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Inactive'),
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Inactive Users selected')),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Logged out')),
              );
            },
          ),
        ],
      ),
    );
  }
}
