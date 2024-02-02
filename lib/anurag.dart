import 'package:flutter/material.dart';

class AnuragScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anurag Srivastav'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Anurag Srivastav',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 9696837373'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.green, Icons.call_made, '7m 15s', '27/01 11:35 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '2m 15s', '26/01 11:30 AM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '8m 02s', '26/01 1:45 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 00s', '26/01 5:10 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '7m 20s', '25/01 10:45 AM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '6m 42s', '25/01 12:15 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '4m 09s', '24/01 3:30 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '12m 52s', '24/01 5:55 PM'),
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
