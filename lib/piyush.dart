import 'package:flutter/material.dart';

class PiyushScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Piyush Singh U.P.'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Piyush Singh U.P.',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 7505043398'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.green, Icons.call_made, '3m 50s', '27/01 1:50 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '5m 55s', '27/01 8:20 AM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '8m 45s', '26/01 1:45 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '3m 26s', '26/01 11:10 AM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '13m 17s', '25/01 3:25 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '1m 00s', '24/01 4:40 PM'),// Add more call history entries as needed
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
