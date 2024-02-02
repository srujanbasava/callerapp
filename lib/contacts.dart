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
    {'Name': 'Ajay Gupta', 'Phone Number': '9821991836'},
    {'Name': 'Akhilesh Nijampur', 'Phone Number': '9565581757'},
    {'Name': 'Akhilesh Pune', 'Phone Number': '9579284374'},
    {'Name': 'Alok Kumar', 'Phone Number': '9716682075'},
    {'Name': 'Alok Shukla', 'Phone Number': '9639200552'},
    {'Name': 'Alok Shukla', 'Phone Number': '9532014014'},
    {'Name': 'Amarjeet Mistri', 'Phone Number': '9794049201'},
    {'Name': 'Amit College', 'Phone Number': '9026360205'},
    {'Name': 'Amit Pune', 'Phone Number': '9970000003'},
    {'Name': 'Amma Ghar', 'Phone Number': '9450896264'},
    {'Name': 'Ankur Ghar', 'Phone Number': '9044652640'},
    {'Name': 'Anand Director', 'Phone Number': '9821438339'},
    {'Name': 'Anand Singh', 'Phone Number': '9549459367'},
    {'Name': 'Angad Sipahi', 'Phone Number': '9307775051'},
    {'Name': 'Angad Sipahi', 'Phone Number': '9125926960'},
    {'Name': 'Anil Mahanagri', 'Phone Number': '9651040334'},
    {'Name': 'Anil Mishra INT', 'Phone Number': '9838548026'},
    {'Name': 'Ankit Aman', 'Phone Number': '8010035836'},
    {'Name': 'Ankur Delhi', 'Phone Number': '9716221668'},
    {'Name': 'Anoop Singh', 'Phone Number': '9795852199'},
    {'Name': 'Anurag College', 'Phone Number': '9838896803'},
    {'Name': 'Anurag Srivastav', 'Phone Number': '9696837373'},
    {'Name': 'Arvind Uncle', 'Phone Number': '9415763391'},
    {'Name': 'Asaram Maurya', 'Phone Number': '9598769570'},
    {'Name': 'Ashok Singh Nijampur', 'Phone Number': '9554617403'},
    {'Name': 'Ashutosh Jalalpur', 'Phone Number': '9415921222'},
    {'Name': 'Ashutosh Shukla', 'Phone Number': '7875051154'},
    {'Name': 'Ateek Ahmed', 'Phone Number': '7275300356'},
    {'Name': 'Ateek Ahmed', 'Phone Number': '9506463348'},
    {'Name': 'Anurag Office', 'Phone Number': '9838690049'},
    {'Name': 'Avinash Singh Patti', 'Phone Number': '9919594708'},
    {'Name': 'Avanish Yadav', 'Phone Number': '9506996026'},
    {'Name': 'Azfar Zamal', 'Phone Number': '9911845160'},
    {'Name': 'Babbu Nijampur', 'Phone Number': '9598647143'},
    {'Name': 'Babita Ghar', 'Phone Number': '1204335052'},
    {'Name': 'Babita Singh', 'Phone Number': '9971646964'},
    {'Name': 'Bablu Mumbai', 'Phone Number': '9769932766'},
    {'Name': 'Badshah Ravi Kisan', 'Phone Number': '9820139202'},
    {'Name': 'Siddiki Bhabhi MUM', 'Phone Number': '9766089384'},
    {'Name': 'Bharat Bus', 'Phone Number': '9839453411'},
    {'Name': 'Rajan Nijampur', 'Phone Number': '9598164418'},
    {'Name': 'Rajan Nijampur', 'Phone Number': '9792639943'},
    {'Name': 'Bhpendra Saudi', 'Phone Number': '966552E+11'},
    {'Name': 'Bijayi Singh Mausi', 'Phone Number': '9451630116'},
    {'Name': 'Bipin Bhaiya Mumbai', 'Phone Number': '9892245849'},
    {'Name': 'Bipin Mishra', 'Phone Number': '8010609436'},
    {'Name': 'Bittan', 'Phone Number': '9305968323'},
    {'Name': 'Bullat Singh Daultabad', 'Phone Number': '9453186466'},
    {'Name': 'Chotu Singh', 'Phone Number': '9696570408'},
    {'Name': 'Shiva', 'Phone Number': '9807890123'},
    {'Name': 'Raju', 'Phone Number': '9885746612'},
    {'Name': 'Rajiv', 'Phone Number': '9876543211'},
  {'Name': 'COE Avadh University', 'Phone Number': '5278245910'},
  {'Name': 'Dablu mumbai', 'Phone Number': '9076976544'},
  {'Name': 'Dablu singh kusumkhor', 'Phone Number': '9838868814'},
  {'Name': 'Dablu singh mumbai', 'Phone Number': '9833017387'},
  {'Name': 'Dablu Pethiya', 'Phone Number': '9839935409'},
  {'Name': 'Dalbir Singh singer', 'Phone Number': '9872510460'},
  {'Name': 'Danbahadur', 'Phone Number': '9454856631'},
  {'Name': 'Deepa Narayan', 'Phone Number': '9820199949'},
  {'Name': 'Deepak dube', 'Phone Number': '9819674737'},
  {'Name': 'Deepak dube.', 'Phone Number': '9821846000'},
  {'Name': 'Deepak goyal', 'Phone Number': '9369969688'},
  {'Name': 'Deepak goyal.', 'Phone Number': '9838960007'},
  {'Name': 'Devendra singh sipahi', 'Phone Number': '9453912460'},
  {'Name': 'Dharmendra singh pratapgarh', 'Phone Number': '9769933128'},
  {'Name': 'Dhristant', 'Phone Number': '9956292724'},
  {'Name': 'Dilip Ganguly', 'Phone Number': '9930054416'},
  {'Name': 'Dinesh Atrahi', 'Phone Number': '9451359613'},
  {'Name': 'Dinesh sir', 'Phone Number': '9455511538'},
  {'Name': 'Guddi singh', 'Phone Number': '9451012511'},
  {'Name': 'Guddu singh kusumkhor', 'Phone Number': '9936221869'},
  {'Name': 'Gunja singh', 'Phone Number': '9450993036'},
  {'Name': 'Gunjan pant', 'Phone Number': '9892856748'},
  {'Name': 'Gunjan pant', 'Phone Number': '9819526708'},
  {'Name': 'Gyan sir', 'Phone Number': '9793597783'},
  {'Name': 'Hari bhau', 'Phone Number': '9821773052'},
  {'Name': 'Heena', 'Phone Number': '9532013194'},
  {'Name': 'Hemant singh', 'Phone Number': '8948078741'},
  {'Name': 'Hotel delhi', 'Phone Number': '1125652223'},
  {'Name': 'Internet', 'Phone Number': '9369018086'},
  {'Name': 'Irfan bhai', 'Phone Number': '9702906420'},
  {'Name': 'Jaidi University', 'Phone Number': '9935018825'},
  {'Name': 'Jimmy Lab', 'Phone Number': '9820957414'},
  {'Name': 'Jitesh Dube', 'Phone Number': '9821636511'},
  {'Name': 'Jitesh dube', 'Phone Number': '9892745883'},
  {'Name': 'jitesh ghar', 'Phone Number': '2266995576'},
  {'Name': 'Joseph', 'Phone Number': '9022992691'},
  {'Name': 'Juhi', 'Phone Number': '7376342205'},
  {'Name': 'Kali Mama', 'Phone Number': '9415332622'},
  {'Name': 'Kavita paris', 'Phone Number': '33637778244'},
  {'Name': 'Kavita pune', 'Phone Number': '8983513502'},
  {'Name': 'Kavya lucknow', 'Phone Number': '9044569118'},
  {'Name': 'Komal dhillon', 'Phone Number': '9930221486'},
  {'Name': 'Kripa sankar singh mumbai', 'Phone Number': '9821213000'},
  {'Name': 'Lala surat', 'Phone Number': '9904336497'},
  {'Name': 'Lambu nijampur', 'Phone Number': '9918096860'},
  {'Name': 'Mangesh Iron', 'Phone Number': '9833965552'},
  {'Name': 'Manish roy', 'Phone Number': '9984822528'},
  {'Name': 'Manoj tiger', 'Phone Number': '9320349164'},
  {'Name': 'Manoj Tiwari', 'Phone Number': '9892632287'},
  {'Name': 'Manoj Tiwari.', 'Phone Number': '9819938553'},
  {'Name': 'Manu Krishna', 'Phone Number': '8108317626'},
  {'Name': 'Maury Gas', 'Phone Number': '9867402188'},
  {'Name': 'Mausa Mumbai', 'Phone Number': '9769468560'},
  {'Name': 'Mayawati home', 'Phone Number': '5222236838'},
  {'Name': 'Papa', 'Phone Number': '9792488878'},
  {'Name': 'Mehmood Bhai', 'Phone Number': '9867920098'},
  {'Name': 'Monu nijampur', 'Phone Number': '9721974752'},
  {'Name': 'Monu nijampur', 'Phone Number': '9554616894'},
  {'Name': 'Monu Dadwa', 'Phone Number': '9453439911'},
  {'Name': 'Mr. Maarwa', 'Phone Number': '9960692964'},
  {'Name': 'Mummy', 'Phone Number': '9415921043'},
  {'Name': 'Mummy pune', 'Phone Number': '9970511399'},
  {'Name': 'Munna Chacha', 'Phone Number': '9450825443'},
  {'Name': 'Nagesh Lawyer', 'Phone Number': '9821542335'},
  {'Name': 'Nagesh Lawyer', 'Phone Number': '9321755455'},
  {'Name': 'Nani', 'Phone Number': '9454679191'},
  {'Name': 'Neetu', 'Phone Number': '9984608518'},
  {'Name': 'Pandey Baba', 'Phone Number': '9454269972'},
  {'Name': 'Nilab ji', 'Phone Number': '9220823319'},
  {'Name': 'Nilab ji', 'Phone Number': '9821620938'},
  {'Name': 'Nisha Bua', 'Phone Number': '8808976734'},
  {'Name': 'Jitesj office', 'Phone Number': '2265237723'},
  {'Name': 'Pakkhi Hegde', 'Phone Number': '9819503906'},
  {'Name': 'Pandey pickup', 'Phone Number': '9454086090'},
  {'Name': 'Pandey sir Avadh university', 'Phone Number': '9453257161'},
  {'Name': 'Pankaj College', 'Phone Number': '9455576455'},
  {'Name': 'Paris Home', 'Phone Number': '33147747616'},
  {'Name': 'Patti', 'Phone Number': '7376429639'},
  {'Name': 'Piyush singh', 'Phone Number': '8050170260'},
  {'Name': 'Piyush singh U.P.', 'Phone Number': '7505043398'},
  {'Name': 'Pooja Didi', 'Phone Number': '8123535710'},
  {'Name': 'Pooja Room BBK', 'Phone Number': '9919312440'},
  {'Name': 'Poonam Singh', 'Phone Number': '9457036580'},
  {'Name': 'Pradeep srivastav', 'Phone Number': '9415183280'},
  {'Name': 'Prashant Singh', 'Phone Number': '7709333011'},
  {'Name': 'Preeti Didi', 'Phone Number': '9839427125'},
  {'Name': 'Priya singh', 'Phone Number': '9987493298'},
  {'Name': 'Pune', 'Phone Number': '9224605516'},
  {'Name': 'Pune nani', 'Phone Number': '8983732073'},
  {'Name': 'Pune Nana', 'Phone Number': '9766830480'},
  {'Name': 'Pune Nana', 'Phone Number': '8087770424'},
  {'Name': 'Pune office', 'Phone Number': '2027424664'},
  {'Name': 'Raj sen Music Dir', 'Phone Number': '9819134485'},
  {'Name': 'Rajaram Prajapati', 'Phone Number': '9936014507'},
  {'Name': 'Rajat', 'Phone Number': '9026217364'},
  {'Name': 'Rajdhani', 'Phone Number': '9721041698'},
  {'Name': 'Rajesh Kirana Mumbai', 'Phone Number': '9870128804'},
  {'Name': 'Rajesh Office', 'Phone Number': '9892225195'},
  {'Name': 'Rajesh Vidhayak', 'Phone Number': '9415188303'},
  {'Name': 'Rajkumar SBI', 'Phone Number': '9451206661'},
  {'Name': 'Raju Singh', 'Phone Number': '9450232845'},
  {'Name': 'Rakesh Agarwal Varanasi', 'Phone Number': '8004945809'},
  {'Name': 'Rakesh Mausa', 'Phone Number': '9373402206'},
  {'Name': 'Ram Bakas Nana Mumbai', 'Phone Number': '9821160137'},
  {'Name': 'Ram Chandra Telephone', 'Phone Number': '9450765215'},
  {'Name': 'Ram ji Yadav', 'Phone Number': '9415787901'},
  {'Name': 'Ramjeet Lakdi', 'Phone Number': '9838578729'},
  {'Name': 'Randhir Delhi', 'Phone Number': '9911218494'},
  {'Name': 'Ravi Kisan', 'Phone Number': '9820075621'},
  {'Name': 'Ravi Kisan.', 'Phone Number': '9324255267'},
  {'Name': 'Ravi Mumbai', 'Phone Number': '9076740889'},
  {'Name': 'Ravi Mumbai.', 'Phone Number': '9930798699'},
  {'Name': 'Ravi surat', 'Phone Number': '9377592328'},
  {'Name': 'Ravindra Singh Paris', 'Phone Number': '33637590585'},
  {'Name': 'Rohan Ji Advocate', 'Phone Number': '9930319935'},
  {'Name': 'Rohit Bombay', 'Phone Number': '9594667376'},
  {'Name': 'Rohit Travels', 'Phone Number': '9892268120'},
  {'Name': 'Rohit Verma', 'Phone Number': '9695014380'},
  {'Name': 'Rosy Singh', 'Phone Number': '8953728562'},
  {'Name': 'Sachin Sir', 'Phone Number': '9044438788'},
  {'Name': 'Sakeel college', 'Phone Number': '9453060678'},
  {'Name': 'Salma Khatoon', 'Phone Number': '9792730084'},
  {'Name': 'Sanjay Hydil', 'Phone Number': '9415921191'},
  {'Name': 'Sanjay Singh', 'Phone Number': '9473854945'},
  {'Name': 'Santosh Singh', 'Phone Number': '9792550592'},
  {'Name': 'Sarad Singh Nijampur', 'Phone Number': '8874133810'},
  {'Name': 'Sarika Ji OBC Pune', 'Phone Number': '9689111964'},
  {'Name': 'Sasikant Munsi', 'Phone Number': '9473854890'},
  {'Name': 'Satish ji', 'Phone Number': '9892745878'},
  {'Name': 'Satish Singh', 'Phone Number': '9920807321'},
  {'Name': 'Firdosh Alam Secretary', 'Phone Number': '9984606229'},
  {'Name': 'Shahganj Iron', 'Phone Number': '5453226306'},
  {'Name': 'Shahnawaj', 'Phone Number': '7275386186'},
  {'Name': 'Sashi College', 'Phone Number': '9044866205'},
  {'Name': 'Sidharth College', 'Phone Number': '9453455540'},
  {'Name': 'Shiv Kumar Hydil', 'Phone Number': '9453526053'},
  {'Name': 'Shree ji Hotel', 'Phone Number': '2226359444'},
  {'Name': 'Shreekant Electrician Mum', 'Phone Number': '9833672641'},
  {'Name': 'Jayesh Bhai', 'Phone Number': '9821107713'},
  {'Name': 'Jayesh Bhai.', 'Phone Number': '9892533999'},
  {'Name': 'Shubham Yadav', 'Phone Number': '9795995995'},
  {'Name': 'Sidharth Tiwari', 'Phone Number': '9820268868'},
  {'Name': 'Siddiki Bhaiya', 'Phone Number': '8080778495'},
  {'Name': 'Siddiki Bhaiya Surat', 'Phone Number': '9824906700'},
  {'Name': 'Soni Singh Nijampur', 'Phone Number': '9161076127'},
  {'Name': 'Sonu Bhaiya Gaud Studio', 'Phone Number': '9839110210'},
  {'Name': 'Sonu Khan', 'Phone Number': '9795259595'},
  {'Name': 'Sonu Nijampur', 'Phone Number': '9839740039'},
  {'Name': 'Sree Chand', 'Phone Number': '9450730567'},
  {'Name': 'Sudhir Verma Secretariat', 'Phone Number': '9198606423'},
  {'Name': 'Sunil Nijampur', 'Phone Number': '8004133723'},
  {'Name': 'Sunny College', 'Phone Number': '9794557407'},
  {'Name': 'Sunny Dixit College', 'Phone Number': '9532257307'},
  {'Name': 'Sunty Shivpal', 'Phone Number': '9936201808'},
  {'Name': 'Surendra Mishra Dialogue Writer', 'Phone Number': '8087718301'},
  {'Name': 'Suresh Mantralaya', 'Phone Number': '9833112272'},
  {'Name': 'S.Kumar Song writer', 'Phone Number': '9820100512'},
  {'Name': 'S.Dubey Sir College', 'Phone Number': '9956296457'},
  {'Name': 'S.k.Chauhan Story Writer', 'Phone Number': '9323981468'},
  {'Name': 'Tanda Powerhouse', 'Phone Number': '9415608274'},
  {'Name': 'Tezpal Paris', 'Phone Number': '33670603045'},
  {'Name': 'T.P. Agarwal', 'Phone Number': '9821469999'},
  {'Name': 'Udayraj College', 'Phone Number': '9793327785'},
  {'Name': 'Umesh mausa', 'Phone Number': '9161582399'},
  {'Name': 'UP Secretariat', 'Phone Number': '5222238065'},
  {'Name': 'Upendra Singh', 'Phone Number': '8767079088'},
  {'Name': 'Varun Singh Lucknow', 'Phone Number': '8005175751'},
  {'Name': 'VC Avadh University', 'Phone Number': '5278246223'},
  {'Name': 'Vijay Iron mumbai', 'Phone Number': '9702354897'},
  {'Name': 'Vikrant Singh', 'Phone Number': '9821330981'},
  {'Name': 'Vinay Sir', 'Phone Number': '9452803072'},
  {'Name': 'Vinod artist', 'Phone Number': '9819129171'},
  {'Name': 'Vinod Singh Surat', 'Phone Number': '7567095040'},
  {'Name': 'Vinod Uncle', 'Phone Number': '9222392295'},
  {'Name': 'Vipin Bahar', 'Phone Number': '9987247593'},
  {'Name': 'Vishal Nagpur', 'Phone Number': '9637375178'},
  {'Name': 'Vishal Faizabad', 'Phone Number': '9506983855'},
  {'Name': 'Visesh Dwivedi', 'Phone Number': '9416242292'},
  {'Name': 'Vivek BBK', 'Phone Number': '9565757389'},
  {'Name': 'Wahid Solanki', 'Phone Number': '9987332077'},
  {'Name': 'Yashu das IMPPA', 'Phone Number': '9987734333'},
  {'Name': 'Yeshwant Producer', 'Phone Number': '8080461215'},
  {'Name': 'Zeeshan Ansari', 'Phone Number': '9718950102'},


// ... other contacts
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
                String firstLetter = userName.isNotEmpty ? userName[0].toUpperCase() : '';

                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Name: $userName',
                        style: TextStyle(
                          color: Colors.blue, // Set the color of the first letter
                        ),
                      ),
                      subtitle: Text(
                        'Phone Number: ${filteredContacts[index]['Phone Number']}',
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue, // Set the background color of the circle avatar
                        child: Text(
                          firstLetter,
                          style: TextStyle(
                            color: Colors.white, // Set the text color of the first letter
                          ),
                        ),
                      ),
                      onTap: () {
                        // Navigate to the contact call screen with the selected contact data
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
                      color: Colors.grey, // Set the color of the divider
                      height: 1, // Set the height of the divider
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
