import 'package:flutter/material.dart';

class SalineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saline'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Saline',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 8051538147'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.red, Icons.call_end, '1m 55s', '24/01 2:05 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '6m 22s', '24/01 12:55 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 0s', '24/01 4:10 AM'),

          _buildHistoryItem(Colors.blue, Icons.call_received, '14m 33s', '23/01 7:20 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '7m 04s', '23/01 1:45 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '3m 35s', '23/01 11:10 AM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '9m 53s', '23/01 9:25 AM'),
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
