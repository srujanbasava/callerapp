import 'package:flutter/material.dart';
import 'package:callerapp/contactcall.dart';

class FavouritesScreen extends StatefulWidget {
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<FavouritesScreen> {
  List<Map<String, String>> contacts = [
    {'Name': 'Aditya Singh', 'Phone Number': '9807345614'},
    {'Name': 'Alok Kumar', 'Phone Number': '9716682075'},
    {'Name': 'Ankur Ghar', 'Phone Number': '9044652640'},
    {'Name': 'Babbu Nijampur', 'Phone Number': '9598647143'},
    {'Name': 'Babita Ghar', 'Phone Number': '1204335052'},
    {'Name': 'Siddiki Bhabhi MUM', 'Phone Number': '9766089384'},
    {'Name': 'Bharat Bus', 'Phone Number': '9839453411'},
    {'Name': 'Rajan Nijampur', 'Phone Number': '9598164418'},
    {'Name': 'Rajan Nijampur', 'Phone Number': '9792639943'},
    {'Name': 'Bhpendra Saudi', 'Phone Number': '966552E+11'},
    {'Name': 'Bijayi Singh Mausi', 'Phone Number': '94516'},
    {'Name': 'Bullat Singh Daultabad', 'Phone Number': '9453186466'},
    {'Name': 'Chotu Singh', 'Phone Number': '9696570408'},
    {'Name': 'Shiva', 'Phone Number': '9807890123'},
    {'Name': 'Raju', 'Phone Number': '9885746612'},
    {'Name': 'Rajiv', 'Phone Number': '9876543211'},
    // ... other contacts
  ];

  List<Map<String, String>> filteredContacts = [];

  @override
  void initState() {
    filteredContacts.addAll(contacts);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: filteredContacts.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow), // Add star icon
                          SizedBox(width: 8.0),
                          Text('Name: ${filteredContacts[index]['Name']}'),
                        ],
                      ),
                      subtitle: Text(
                          'Phone Number: ${filteredContacts[index]['Phone Number']}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactCallScreen(
                              callerId: filteredContacts[index]['Name'] ?? '',
                              callerName: filteredContacts[index]['Name'] ?? '',
                              callTiming: '00:00',
                            ),
                          ),
                        );
                      },
                    ),
                    Divider(
                      color: Colors.white,
                      height: 1,
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
}
