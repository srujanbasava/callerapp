import 'package:flutter/material.dart';
import 'call.dart';

class Dailpad extends StatefulWidget {
  @override
  _DailpadState createState() => _DailpadState();
}

class _DailpadState extends State<Dailpad> {
  String enteredDigits = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dial Pad'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      enteredDigits,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (enteredDigits.isNotEmpty) {
                            enteredDigits = enteredDigits.substring(0, enteredDigits.length - 1);
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Icon(Icons.backspace),
                    ),
                  ],
                ),
              ],
            ),
          ),
          buildDialRow(['1', '2', '3'], context),
          buildDialRow(['4', '5', '6'], context),
          buildDialRow(['7', '8', '9'], context),
          buildDialRow(['*', '0', '#'], context),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              print('Calling $enteredDigits...');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CallScreen(
                    callerNumber: enteredDigits,
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Icon(Icons.call, size: 40, color: Colors.green),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget buildDialRow(List<String> labels, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: labels
          .map((label) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              enteredDigits += label;
            });
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5.0,
            minimumSize: Size(60, 60),
          ),
          child: Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ))
          .toList(),
    );
  }
}
