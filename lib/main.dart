import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:callerapp/dail_pad.dart';
import 'package:callerapp/favourites.dart';
import 'package:callerapp/contacts.dart';
import 'package:callerapp/history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PermissionScreen(),
    );
  }
}

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  Future<void> _checkPermissions() async {
    final status = await Permission.phone.status;

    if (status.isGranted) {
      _openApp();
    } else if (status.isDenied || status.isPermanentlyDenied) {
      await _requestPermissions();
    }
  }

  Future<void> _requestPermissions() async {
    final status = await Permission.phone.request();

    if (status.isGranted) {
      _openApp();
    } else if (status.isDenied || status.isPermanentlyDenied) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Permission Denied'),
            content: Text('You denied the required permission.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Deny'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _openApp();
                },
                child: Text('Allow'),
              ),
            ],
          );
        },
      );
    }
  }

  void _openApp() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Call Log'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.history), text: 'History'),
              Tab(icon: Icon(Icons.star), text: 'Favourites'),
              Tab(icon: Icon(Icons.contacts), text: 'Contacts'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HistoryScreen(),
            FavouritesScreen(),
            ContactsScreen(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          tooltip: "Dial Pad",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Dailpad()));
          },
          child: Icon(Icons.call),
        ),
      ),
    );
  }
}
