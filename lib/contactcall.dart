import 'package:flutter/material.dart';

class ContactCallScreen extends StatefulWidget {
  final String callerId;
  final String callerName;
  final String callTiming;

  const ContactCallScreen({
    required this.callerId,
    required this.callerName,
    required this.callTiming,
  });

  @override
  _ContactCallScreenState createState() => _ContactCallScreenState();
}

class _ContactCallScreenState extends State<ContactCallScreen> {
  Set<String> activeButtons = Set();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Calling ${widget.callerName} ...',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton(Icons.mic, 'Mute'),
              buildButton(Icons.volume_up, 'Speaker'),
              buildButton(Icons.fiber_manual_record, 'Record'),
            ],
          ),
          SizedBox(height: 24.0),
          IconButton(
            icon: Icon(
              Icons.call_end,
              color: Colors.red,
              size: 60.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget buildButton(IconData icon, String label) {
    bool isActive = activeButtons.contains(label);

    return IconButton(
      icon: Icon(
        icon,
        color: isActive ? Colors.blue : null,
        size: 36.0,
      ),
      onPressed: () {
        setState(() {
          if (isActive) {
            activeButtons.remove(label);
          } else {
            activeButtons.add(label);
          }
        });
      },
    );
  }
}
