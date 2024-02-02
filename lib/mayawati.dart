import 'package:flutter/material.dart';

class MayawatiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mayawati Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Mayawati Home',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 5222236838'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.blue, Icons.call_received, '6m 08s', '28/01 2:15 PM'),

          _buildHistoryItem(Colors.blue, Icons.call_received, '8m 30s', '28/01 9:45 AM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '4m 09s', '27/01 3:10 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '1m 52s', '27/01 12:35 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '11m 23s', '26/01 5:50 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 00s', '25/01 2:15 PM'),
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
