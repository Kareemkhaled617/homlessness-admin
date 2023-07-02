import 'package:flutter/material.dart';

class CalenderData extends StatefulWidget {
  CalenderData({
    super.key,
    required this.phone,
    required this.home,
    required this.address,
    required this.time,
    required this.date,
  });

  String address;
  String home;
  String date;
  String time;
  String phone;

  @override
  State<CalenderData> createState() => _CalenderDataState();
}

class _CalenderDataState extends State<CalenderData> {
  final Color _color1 = const Color(0xff4170D8);
  final Color _color2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      width: width / 3,
      constraints: const BoxConstraints(minHeight: 100),
      decoration: BoxDecoration(
          border: Border.all(width: 6, color: const Color(0xff1C3879)),
          borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        dataItem('Address', widget.address),
        dataItem('Name', widget.home),
        dataItem('date', widget.date),
        dataItem('time', '${widget.time} '),
        dataItem('phone', '${widget.phone} '),
      ]),
    );
  }

  Widget dataItem(String key, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$key: ",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.visible,
            ),
          ),
          Expanded(
            child: Container(
                constraints: const BoxConstraints(minHeight: 10),
                child: Text(
                  "${value}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.visible,
                )),
          )
        ],
      ),
    );
  }
}
