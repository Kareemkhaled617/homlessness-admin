import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widget/side_bar_menu.dart';
import 'calender_data.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff131e29),
        title: const Text('Calender'),
        centerTitle: true,
      ),
      drawer: SideBar(),
      body: Container(
          width: width * 5 / 6 - 16,
          height: height - 16,
          padding: EdgeInsets.fromLTRB(width / 22, 20, width / 22, 0),
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('visit').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List data = snapshot.data?.docs as List;
                return GridView.count(
                  crossAxisCount:
                      MediaQuery.of(context).size.width <= 1500 ? 1 : 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 2,
                  childAspectRatio: 2.1,
                  children: List.generate(
                      data.length,
                      (index) => CalenderData(
                            phone: data[index]['phone'],
                            home: data[index]['home'],
                            address: data[index]['address'],
                            time: data[index]['time'],
                            date: data[index]['date'],
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
