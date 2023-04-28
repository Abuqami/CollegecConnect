import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/coordinators_from_admin_model.dart';
import 'package:flutter/material.dart';

class ListCoordinatorsPage extends StatelessWidget {
  const ListCoordinatorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 36.0,
          vertical: 24.0,
        ),
        child: StreamBuilder<List<CoordinatorsFromAdminModel>>(
          stream: readCoordinators(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong! ${snapshot.error}');
            } else if (snapshot.hasData) {
              final coordinators = snapshot.data!;
              return SizedBox(
                height: 600.0,
                child: ListView(
                  shrinkWrap: true,
                  children: coordinators.map(buildListCoordinators).toList(),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      )),
    );
  }

  Widget buildListCoordinators(CoordinatorsFromAdminModel coordinator) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      margin: EdgeInsets.only(
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          4.0,
        ),
        color: Colors.grey.withOpacity(
          .1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.delete_rounded,
            size: 18.0,
            color: Colors.deepPurple,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                coordinator.emailAddress,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                coordinator.timestamp,
                style: TextStyle(
                  fontSize: 8.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Stream<List<CoordinatorsFromAdminModel>> readCoordinators() =>
    FirebaseFirestore.instance
        .collection('coordinators_from_admin')
        .orderBy('date', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => CoordinatorsFromAdminModel.fromJson(doc.data()))
            .toList());
