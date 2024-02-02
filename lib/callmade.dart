import 'package:flutter/material.dart';

class CallMadeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> callMadeList;

  CallMadeScreen(this.callMadeList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Made'),
      ),
      body: ListView.builder(
        itemCount: callMadeList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Icon(Icons.call_made, color: Colors.green),
                SizedBox(width: 8.0),
                Text('${callMadeList[index]['Name']}'),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${callMadeList[index]['Phone Number']}'),
                Text('${callMadeList[index]['Duration']}'),
                Text('${callMadeList[index]['Timestamp']}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
