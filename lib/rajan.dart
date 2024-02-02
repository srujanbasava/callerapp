import 'package:flutter/material.dart';

class RajanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rajan Nijampur'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Rajan Nijampur',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text('Phone Number: 9598164418'),
          SizedBox(height: 20.0),
          // Add past history data here
          _buildHistoryItem(Colors.green, Icons.call_made, '1m 06s', 'Today 8:06 PM'),
          _buildHistoryItem(Colors.green, Icons.call_made, '12m 02s', 'Yes 5.00 AM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '00m 00s', '27/01 11:34'),
          _buildHistoryItem(Colors.blue, Icons.call_received, '10m 33s', '24/01 4:35 PM'),
          _buildHistoryItem(Colors.red, Icons.call_end, '0m 55s', '23/01 1:50 PM'),
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
