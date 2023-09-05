import 'package:cherishtheweak/theme/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Tour extends StatefulWidget {
  const Tour({Key? key}) : super(key: key);

  @override
  _TourState createState() => _TourState();
}

class _TourState extends State<Tour> {
  final reminderUrl = 'https://chatgptplus.blog/gpt-4-image-input/';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Center(
            child: Text(
              '- Tours -',
              style: AppTheme.text3,
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('Tour').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator(
                    color: Colors.green,
                  );
                }

                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                if (!snapshot.hasData) {
                  return Text('No data available');
                }

                final tours = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: tours.length,
                  itemBuilder: (context, index) {
                    final tourData =
                        tours[index].data() as Map<String, dynamic>;
                    final name = tourData['Name'] as String;
                    final location = tourData['Location'] as String;
                    final dateStart = tourData['Date-start'] as Timestamp;
                    final dateEnd = tourData['Date-end'] as Timestamp;
                    final country = tourData['Country'] as String;
                    final link = tourData['Link - TicketMaster'] as String;
                    final reminderLink = reminderUrl;

                    final dateStartFormat = DateFormat('d ');
                    final dateEndFormat = DateFormat('d MMM');
                    print('Number of tours: ${tours.length}');

                    return Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.20),
                          title: Text(
                            'Date: ${dateStartFormat.format(dateStart.toDate())}- ${dateEndFormat.format(dateEnd.toDate())}',
                            style: AppTheme.tourDate,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: AppTheme.tourInfo,
                              ),
                              Text(
                                'Location: $country, $location',
                                style: AppTheme.tourInfo,
                              ),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize
                                .min, // Ensure the row takes up minimal space
                            children: [
                              ElevatedButton(
                                onPressed: () => _launchUrl(reminderLink),
                                  // 
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                                child: Text('Set a Reminder'),
                              ),
                              SizedBox(
                                  width: 10), // Space between the two buttons
                              OutlinedButton(
                                onPressed: () => _launchUrl(link),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.white),
                                  primary: Colors.white,
                                  backgroundColor: Colors.black,
                                ),
                                child: Text('Buy Ticket'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.20),
                            child: Divider(
                                color: Colors.white)) // This is the separator
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
