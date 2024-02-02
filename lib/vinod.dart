import 'package:flutter/material.dart';

class VinodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vinod Singh Surat'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Vinod Singh Surat',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 7567095040'),
          SizedBox(height: 20.0),
          _buildHistoryItem(Colors.blue, Icons.call_received, '4m 02s', '26/01 3:20 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '6m 15s', '26/01 8:30 AM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '8m 26s', '26/01 2:55 AM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '2m 57s', '25/01 12:20 PM'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '11m 28s', '24/01 5:35 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 00s', '23/01 2:50 PM'),
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
