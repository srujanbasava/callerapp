import 'package:flutter/material.dart';
import 'aditya.dart';
import 'rajan.dart';
import 'siddiki.dart';
import 'rohan.dart';
import 'gunjan.dart';
import 'devendra.dart';
import 'jummy.dart';
import 'mayawati.dart';
import 'piyush.dart';
import 'anurag.dart';
import 'vinod.dart';
import 'saline.dart';
import 'callmade.dart';
import 'callreceive.dart';
import 'callend.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<Map<String, dynamic>> callHistory = [
    {'Name': 'Aditya Singh', 'Phone Number': '9807345614', 'Duration': '3m 23s', 'Timestamp': 'Today 4:23 PM', 'Status': 'Sent'},
    {'Name': 'Siddiki Bhabhi MUM', 'Phone Number': '9766089384', 'Duration': '15m 02s', 'Timestamp': 'Today 1:21 PM', 'Status': 'Received'},
    {'Name': 'Rajan Nijampur', 'Phone Number': '9598164418', 'Duration': '00m 00s', 'Timestamp': 'Today 8:06 AM', 'Status': 'Rejected'},
    {'Name': 'Rohan Ji Advocate', 'Phone Number': '9930319935', 'Duration': '5m 12s', 'Timestamp': 'Yes 9.11 PM', 'Status': 'Sent'},
    {'Name': 'Gunjan Pant', 'Phone Number': '9892856748', 'Duration': '8m 34s', 'Timestamp': 'Yes 6.51 AM', 'Status': 'Received'},
    {'Name': 'Devendra Singh Sipahi', 'Phone Number': '9453912460', 'Duration': '0m 00s', 'Timestamp': '29/01 7.28 PM', 'Status': 'Rejected'},
    {'Name': 'Jimmy Lab', 'Phone Number': '9820957414', 'Duration': '10m 20s', 'Timestamp': '29/01 3:55 PM', 'Status': 'Sent'},
    {'Name': 'Mayawati Home', 'Phone Number': '5222236838', 'Duration': '6m 08s', 'Timestamp': '28/01 2:15 AM', 'Status': 'Received'},
    {'Name': 'Piyush Singh U.P.', 'Phone Number': '7505043398', 'Duration': '0m 00s', 'Timestamp': '27/01 1:50 PM', 'Status': 'Rejected'},
    {'Name': 'Anurag Srivastav', 'Phone Number': '9696837373', 'Duration': '7m 15s', 'Timestamp': '27/01 11:35 AM', 'Status': 'Sent'},
    {'Name': 'Vinod Singh Surat', 'Phone Number': '7567095040', 'Duration': '4m 02s', 'Timestamp': '26/01 3:20 PM', 'Status': 'Received'},
    {'Name': 'Saline', 'Phone Number': '8051538147', 'Duration': '0m 00s', 'Timestamp': '24/01 2:05 AM', 'Status': 'Rejected'},
  ];

  List<Map<String, dynamic>> filteredCallHistory = [];

  @override
  void initState() {
    filteredCallHistory.addAll(callHistory);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Traces'),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.call_made, color: Colors.green),
                  onPressed: () {
                    _navigateToCallMadeScreen(context);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.call_received, color: Colors.blue),
                  onPressed: () {
                    _navigateToCallReceiveScreen(context);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.call_end, color: Colors.red),
                  onPressed: () {
                    _navigateToCallEndScreen(context);
                  },
                ),
                // Search icon button removed
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  filteredCallHistory = callHistory
                      .where((entry) =>
                      entry['Name'].toLowerCase().contains(value.toLowerCase()))
                      .toList();
                });
              },
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCallHistory.length,
              itemBuilder: (context, index) {
                final currentEntry = filteredCallHistory[index];
                final prevEntry =
                index > 0 ? filteredCallHistory[index - 1] : null;

                final bool showDateHeader = prevEntry == null ||
                    _isDifferentDate(
                        currentEntry['Timestamp'], prevEntry['Timestamp']);

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (showDateHeader)
                      _buildDateHeader(currentEntry['Timestamp']),
                    ListTile(
                      title: Row(
                        children: [
                          _buildStatusIcon(currentEntry['Status']),
                          SizedBox(width: 8.0),
                          Text('${currentEntry['Name']}'),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${currentEntry['Phone Number']}'),
                          Text('${currentEntry['Duration']}'),
                          Text('${currentEntry['Timestamp']}'),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.call),
                        onPressed: () {
                          print('Call icon pressed for ${currentEntry['Name']}');
                        },
                      ),
                      onTap: () {
                        _navigateToContactScreen(
                            context, currentEntry['Name']);
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusIcon(String status) {
    IconData icon;
    Color color;

    switch (status) {
      case 'Sent':
        icon = Icons.call_made;
        color = Colors.green;
        break;
      case 'Received':
        icon = Icons.call_received;
        color = Colors.blue;
        break;
      case 'Rejected':
        icon = Icons.call_end;
        color = Colors.red;
        break;
      default:
        icon = Icons.error;
        color = Colors.black;
    }

    return Icon(
      icon,
      color: color,
    );
  }

  Widget _buildDateHeader(String timestamp) {
    String formattedDate;
    if (timestamp.contains('Today')) {
      formattedDate = 'Today';
    } else if (timestamp.contains('Yes')) {
      formattedDate = 'Yesterday';
    } else {
      formattedDate = timestamp.split(' ')[0];
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(8.0),
      child: Text(
        formattedDate,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  bool _isDifferentDate(String timestamp1, String timestamp2) {
    return timestamp1.split(' ')[0] != timestamp2.split(' ')[0];
  }

  void _navigateToContactScreen(
      BuildContext context, String contactName) {
    switch (contactName) {
      case 'Aditya Singh':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AdityaScreen()),
        );
        break;
      case 'Rajan Nijampur':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RajanScreen()),
        );
        break;
      case 'Siddiki Bhabhi MUM':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SiddikiScreen()),
        );
        break;
      case 'Rohan Ji Advocate':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RohanScreen()),
        );
        break;
      case 'Gunjan Pant':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GunjanScreen()),
        );
        break;
      case 'Devendra Singh Sipahi':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DevendraScreen()),
        );
        break;
      case 'Jimmy Lab':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => JummyScreen()),
        );
        break;
      case 'Mayawati Home':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MayawatiScreen()),
        );
        break;
      case 'Piyush Singh U.P.':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PiyushScreen()),
        );
        break;
      case 'Anurag Srivastav':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AnuragScreen()),
        );
        break;
      case 'Vinod Singh Surat':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VinodScreen()),
        );
        break;
      case 'Saline':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SalineScreen()),
        );
        break;
    }
  }

  void _navigateToCallMadeScreen(BuildContext context) {
    List<Map<String, dynamic>> callMadeList = callHistory
        .where((call) => call['Status'] == 'Sent')
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CallMadeScreen(callMadeList)),
    );
  }

  void _navigateToCallReceiveScreen(BuildContext context) {
    List<Map<String, dynamic>> callReceiveList = callHistory
        .where((call) => call['Status'] == 'Received')
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CallReceiveScreen(callReceiveList)),
    );
  }

  void _navigateToCallEndScreen(BuildContext context) {
    List<Map<String, dynamic>> callEndList = callHistory
        .where((call) => call['Status'] == 'Rejected')
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CallEndScreen(callEndList)),
    );
  }

  void _navigateToContactSearchScreen(BuildContext context) {
    print('Navigate to contact search screen');
  }
}

void main() {
  runApp(MaterialApp(
    home: HistoryScreen(),
  ));
}
