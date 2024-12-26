import 'package:flutter/material.dart';

class SearchBarWithProfile extends StatelessWidget {
  final Function(String)? onSearch; // Optional callback for search functionality

  SearchBarWithProfile({this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Search Bar
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: TextField(
                onChanged: onSearch,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          
          // Profile Icon
          SizedBox(width: 10), // Space between search bar and profile icon
          GestureDetector(
            onTap: () {
              // You can define your profile icon tap action here
              print('Profile icon tapped');
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/profile_picture.png'), // Change the image path
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
