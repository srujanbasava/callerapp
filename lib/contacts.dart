import 'package:flutter/material.dart';
import 'package:callerapp/contactcall.dart';

class ContactsScreen extends StatefulWidget {
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  List<Map<String, String>> contacts = [
    {'Name': 'Aapa', 'Phone Number': '9820110409'},
    {'Name': 'Additya Bhatt', 'Phone Number': '9044818730'},
    {'Name': 'Aditya Singh', 'Phone Number': '9807345614'},
    // ... (other contacts)
    {'Name': 'Yashu das IMPPA', 'Phone Number': '9987734333'},
    {'Name': 'Yeshwant Producer', 'Phone Number': '8080461215'},
    {'Name': 'Zeeshan Ansari', 'Phone Number': '9718950102'},
  ];

  List<Map<String, String>> filteredContacts = [];

  @override
  void initState() {
    filteredContacts.addAll(contacts);
    super.initState();
  }

  void _searchContacts(String query) {
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
      contact['Name']?.toLowerCase()?.contains(query.toLowerCase()) ??
          false)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _searchContacts,
              decoration: InputDecoration(
                labelText: 'Search by Name',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredContacts.length,
              itemBuilder: (context, index) {
                String userName = filteredContacts[index]['Name'] ?? '';
                String firstLetter =
                userName.isNotEmpty ? userName[0].toUpperCase() : '';

                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Name: $userName',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      subtitle: Text(
                        'Phone Number: ${filteredContacts[index]['Phone Number']}',
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(
                          firstLetter,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactCallScreen(
                              callerId: userName,
                              callerName: userName,
                              callTiming: '00:00',
                            ),
                          ),
                        );
                      },
                    ),
                    Divider(
                      color: Colors.grey,
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
