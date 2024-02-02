import 'package:flutter/material.dart';

class DevendraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devendra Singh Sipahi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Devendra Singh Sipahi',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 9453912460'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.green, Icons.call_made, '2m 45s', '29/01 7.28 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '10m 45s', '29/01 9:15 AM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '5m 34s', '28/01 2:50 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '2m 15s', '28/01 11:30 AM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '8m 02s', '27/01 1:45 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 0s', '26/01 5:10 PM'),
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
