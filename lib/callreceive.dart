import 'package:flutter/material.dart';

class CallReceiveScreen extends StatelessWidget {
  final List<Map<String, dynamic>> callReceiveList;

  CallReceiveScreen(this.callReceiveList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incoming'),
      ),
      body: ListView.builder(
        itemCount: callReceiveList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Icon(Icons.call_received, color: Colors.blue),
                SizedBox(width: 8.0),
                Text('${callReceiveList[index]['Name']}'),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${callReceiveList[index]['Phone Number']}'),
                Text('${callReceiveList[index]['Duration']}'),
                Text('${callReceiveList[index]['Timestamp']}'),
              ],
            ),
          );
        },
      ),
    );
  }
}






