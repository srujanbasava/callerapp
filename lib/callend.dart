import 'package:flutter/material.dart';

class CallEndScreen extends StatelessWidget {
  final List<Map<String, dynamic>> callEndList;

  CallEndScreen(this.callEndList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call End'),
      ),
      body: ListView.builder(
        itemCount: callEndList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Icon(Icons.call_end, color: Colors.red),
                SizedBox(width: 8.0),
                Text('${callEndList[index]['Name']}'),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${callEndList[index]['Phone Number']}'),
                Text('${callEndList[index]['Duration']}'),
                Text('${callEndList[index]['Timestamp']}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
