import 'package:flutter/material.dart';

class RequestData extends StatefulWidget {
  String fName;

  String lName;

  String tName;

  String nickName;

  String statue;

  String deyana;

  String edu;

  String jop;

  String phone;

  String email;

  String idNumber;

  String country;

  String travelNumber;

  String birthDay;

  String nationality;

  String rigon;

  String center;

  String address;
  String gender;
  String ageTo;
  String ageFrom;

  String phoneNumber;

  RequestData(
      {required this.fName,
      required this.lName,
      required this.tName,
      required this.nickName,
      required this.statue,
      required this.deyana,
      required this.edu,
      required this.jop,
      required this.phone,
      required this.email,
      required this.idNumber,
      required this.country,
      required this.travelNumber,
      required this.birthDay,
      required this.nationality,
      required this.rigon,
      required this.center,
      required this.address,
      required this.gender,
      required this.ageFrom,
      required this.ageTo,
      required this.phoneNumber});

  @override
  State<RequestData> createState() => _RequestDataState();
}

class _RequestDataState extends State<RequestData> {
  final Color _color1 = const Color(0xff4170D8);
  final Color _color2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      height: 200,
      decoration: BoxDecoration(
          border: Border.all(width: 6, color: const Color(0xff1C3879)),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'بيانات الام البديله :-',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              dataItem('الاسم الاول', widget.fName),
              dataItem('الاسم الثاني', widget.lName),
              dataItem('الاسم الثالث', widget.tName),
              dataItem('اللقب', widget.nickName),
              dataItem('الحاله الجتماعيه', widget.statue),
              dataItem('الديانه', widget.deyana),
              dataItem('المرحله التعليميه', widget.edu),
              dataItem('المهنه', widget.jop),
              dataItem('المحمول', widget.phone),
              dataItem('البريد الالكتروني', widget.email),
            ]),
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'بيانات الجنسيه الام البديله :-',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              dataItem('الرقم القومي', widget.idNumber),
              dataItem('محافظه الميلاد', widget.country),
              dataItem('تاريخ الميلاد', widget.birthDay),
              dataItem('رقم جواز السفر', widget.travelNumber),
              dataItem('الجنسيه', widget.nationality),
            ]),
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'بيانات السكن داخل مصر :-',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              dataItem('المحافظه', widget.rigon),
              dataItem('المركز', widget.center),
              dataItem('العنوان', widget.address),
              dataItem('التليفون', '${widget.phoneNumber} '),
            ]),
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'بيانات الطفل :-',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
              dataItem('نوع الطفل', widget.gender),
              dataItem('العمر من ', widget.ageFrom),
              dataItem('العمر الي', widget.ageTo),
            ]),
          ),
        ],
      ),
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
