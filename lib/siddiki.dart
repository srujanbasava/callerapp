import 'package:flutter/material.dart';

class SiddikiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Siddiki Bhabhi MUM'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Siddiki Bhabhi MUM',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 9766089384'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.blue, Icons.call_received, '15m 02s', 'Today 1:21 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '8m 13s', '24/01 7.50 AM'),
          // Add more call history entries as needed
        ],
      ),
    );
  }

  Widget _buildHistoryItem(Color iconColor, IconData icon, String duration, String timestamp) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(width: 8.0),
        Text('Duration: $duration, Timestamp: $timestamp'),
      ],
    );
  }
}
