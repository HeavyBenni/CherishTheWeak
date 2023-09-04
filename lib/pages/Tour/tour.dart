import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Tour extends StatefulWidget {
  const Tour({super.key});

  @override
  State<Tour> createState() => _TourState();
}

class _TourState extends State<Tour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    ); /*Expanded(
      child: StreamBuilder(stream: FirebaseFirestore.instance.collection('Tour').doc('pzdt2q7AqngEEfrAVpBP').snapshots(), builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (!snapshot.hasData || !snapshot.data!.exists) {
          return Text('Document does not exist');
        }
        
        final data = snapshot.data!.data() as Map<String, dynamic>;
        final name = data['Name'] as String;

        return Text(name);
      })
    );
  }
}
*/
  }}