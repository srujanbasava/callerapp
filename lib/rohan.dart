import 'package:flutter/material.dart';

class RohanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rohan Ji Advocate'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Rohan Ji Advocate',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 9930319935'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.green, Icons.call_made, '5m 12s', 'Yes 9.11 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 00s', 'Yes 7.50 AM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '8m 02s', '29/01 5.38 AM'),
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
