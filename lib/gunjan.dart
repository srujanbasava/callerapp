import 'package:flutter/material.dart';

class GunjanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gunjan Pant'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Gunjan Pant',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 9892856748'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.blue, Icons.call_received, '8m 34s', 'Yes 6:50 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '11m 25s', '29/01 9:10 AM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '6m 14s', '28/01 2:35 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '2m 45s', '27/01 11:00 AM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '9m 02s', '26/01 1:15 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 00s', '26/01 5:30 PM'),
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
