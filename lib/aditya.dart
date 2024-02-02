import 'package:flutter/material.dart';

class AdityaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aditya Singh'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Aditya Singh',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 9807345614'),
          SizedBox(height: 20.0),
          // Add past history data here
          _buildHistoryItem(Colors.green, Icons.call_made, '3m 23s', 'Today 4:23 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '15m 02s', '26/01 3:21 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 00s', '23/01 3:06 PM'),
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
