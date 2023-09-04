import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Tour extends StatefulWidget {
  const Tour({Key? key}) : super(key: key);

  @override
  _TourListState createState() => _TourListState();
}

class _TourListState extends State<Tour> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('Tour').doc('pzdt2q7AqngEEfrAVpBP').snapshots() as 
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        final tours = snapshot.data!.docs;

        return ListView.builder(
          itemCount: tours.length,
          itemBuilder: (context, index) {
            final tourData = tours[index].data() as Map<String, dynamic>;
            final name = tourData['Name'] as String;
            final location = tourData['Location'] as String;
            final link = tourData['Link - TIcketMaster'] as String;
            final dateStart = tourData['Date-start'] as String;
            final dateEnd = tourData['Date-end'] as String;
            final country = tourData['Country'] as String;

            return ListTile(
              title: Text(name),
              subtitle: Text('Location: $location'),
              onTap: () {
                // Handle onTap action here, e.g., navigate to a detail screen.
              },
            );
          },
        );
      },
    );
  }
}
