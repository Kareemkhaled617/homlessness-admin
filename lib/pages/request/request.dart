import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widget/side_bar_menu.dart';
import 'request_data.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff131e29),
        title: const Text('Request'),
        centerTitle: true,
      ),
      drawer: SideBar(),
      body: Container(
        margin: const EdgeInsets.all(16),
          child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Requests').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List data = snapshot.data?.docs as List;
            return GridView.count(
              crossAxisCount: 1,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 2,
              childAspectRatio: 3.2,
              children: List.generate(
                  data.length,
                  (index) => RequestData(
                        fName: data[index]['firstName'],
                        lName: data[index]['secondName'],
                        tName: data[index]['thirdName'],
                        nickName: data[index]['nickName'],
                        statue: data[index]['statue'],
                        deyana: data[index]['religion'],
                        edu: data[index]['education'],
                        jop: data[index]['career'],
                        phone: data[index]['phone'],
                        email: data[index]['email'],
                        country: data[index]['country'],
                        idNumber: data[index]['idGovern'],
                        travelNumber: data[index]['idPassport'],
                        birthDay: data[index]['dob'],
                        nationality: data[index]['nationality'],
                        rigon: data[index]['governorateMyHome'],
                        center: data[index]['sectionMyHome'],
                        address: data[index]['addressMyHome'],
                        gender: data[index]['gender'],
                        ageFrom: data[index]['ageFrom'],
                        ageTo: data[index]['ageTo'],
                        phoneNumber: data[index]['phoneMyHome'],
                      )),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }
}
