import 'package:flutter/material.dart';
import 'dail_pad.dart';

class CallScreen extends StatefulWidget {
  final String callerNumber;

  CallScreen({required this.callerNumber});

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  bool isMuted = false;
  bool isSpeakerOn = false;
  bool isRecording = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Call Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Calling: ${widget.callerNumber}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Ringing...',
            style: TextStyle(fontSize: 18),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCircularIconButton(
                onPressed: () {
                  setState(() {
                    isMuted = !isMuted;
                  });
                },
                icon: Icons.mic,
                color: isMuted ? Colors.deepOrange : Colors.grey,
              ),
              buildCircularIconButton(
                onPressed: () {
                  setState(() {
                    isSpeakerOn = !isSpeakerOn;
                  });
                },
                icon: Icons.volume_up,
                color: isSpeakerOn ? Colors.green : Colors.grey,
              ),
              buildCircularIconButton(
                onPressed: () {
                  setState(() {
                    isRecording = !isRecording;
                  });
                },
                icon: Icons.fiber_manual_record,
                color: isRecording ? Colors.blue : Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 20),
          buildCircularIconButton(
            onPressed: () {
              // End the call and navigate back to the Dailpad screen
              Navigator.pop(context);
            },
            icon: Icons.call_end,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget buildCircularIconButton({required VoidCallback onPressed, required IconData icon, required Color color}) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: color,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: Colors.white,
      ),
    );
  }
}
