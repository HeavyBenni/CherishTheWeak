import 'package:cherishtheweak/theme/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tour extends StatefulWidget {
  const Tour({Key? key}) : super(key: key);

  @override
  _TourState createState() => _TourState();
}

class _TourState extends State<Tour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Center(
              child: Text(
            '- Tour -',
            style: AppTheme.text3,
          )),
          StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Tour')
                .doc('pzdt2q7AqngEEfrAVpBP')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }

              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              if (!snapshot.hasData || !snapshot.data!.exists) {
                return Text('No data available');
              }

              final tourData = snapshot.data!.data() as Map<String, dynamic>;
              final name = tourData['Name'] as String;
              final location = tourData['Location'] as String;
              final link = tourData['Link - TicketMaster'] as String;
              final dateStart = tourData['Date-start'] as Timestamp;
              final dateEnd = tourData['Date-end'] as Timestamp;
              final country = tourData['Country'] as String;

              final dateStartFormat = DateFormat('d ');
              final dateEndFormat = DateFormat('d MMM');

              return ListTile(
                title: Text(
                  name,
                  style: AppTheme.bandName, // Customize the headline style
                ),
                subtitle: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Date: ${dateStartFormat.format(dateStart.toDate())}- ${dateEndFormat.format(dateEnd.toDate())}',
                            style: AppTheme.text4,
                          ),
                          Text(
                            'Location: $country, $location',
                            style: AppTheme.text4,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60, right: 20),
                      child: Container(width: 300,
                        height: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle buying tickets action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // Customize button color
                          ),
                          child: Text(
                            'Buy Tickets',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle onTap action here, e.g., navigate to a detail screen.
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
