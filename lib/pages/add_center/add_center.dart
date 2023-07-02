import 'package:admin_nicu/controllers/controller.dart';
import 'package:admin_nicu/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

import '../../component/default_textfield.dart';

class AddCenter extends StatefulWidget {
  AddCenter({
    super.key,
    required this.isAdd,
    this.n,
    this.p,
    this.a,
    this.pr,
    this.lo,
    this.la,
    this.e,
    this.cl,
    this.im1,
    this.im2,
    this.im3,
    this.op,
    this.pa,
    this.uid,
    this.ty,
    this.av,
  });

  bool isAdd;
  String? e = '',
      p = '',
      n = '',
      a = '',
      la = '',
      lo = '',
      pa = '',
      pr = '',
      im1 = '',
      im2 = '',
      im3 = '',
      op = '',
      cl = '',
      ty = '',
      av = '',
      uid = '';

  @override
  State<AddCenter> createState() => _AddCenterState();
}

class _AddCenterState extends State<AddCenter> {
  late TextEditingController email;

  late TextEditingController name;

  late TextEditingController address;

  late TextEditingController late;

  late TextEditingController long;

  late TextEditingController password;

  late TextEditingController phone;

  late TextEditingController profile;

  late TextEditingController image1;

  late TextEditingController image2;

  late TextEditingController image3;

  late TextEditingController opining;

  late TextEditingController color;

  late String type;

  late String avilability;

  @override
  void initState() {
    email = TextEditingController(text: widget.e);
    name = TextEditingController(text: widget.n);
    address = TextEditingController(text: widget.a);
    late = TextEditingController(text: widget.la);
    long = TextEditingController(text: widget.lo);
    password = TextEditingController(text: widget.pa);
    phone = TextEditingController(text: widget.p);
    profile = TextEditingController(text: widget.pr);
    image1 = TextEditingController(text: widget.im1);
    image2 = TextEditingController(text: widget.im2);
    image3 = TextEditingController(text: widget.im3);
    opining = TextEditingController(text: widget.op);
    color = TextEditingController(text: widget.cl);
    type = widget.ty!;
    avilability = widget.av!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(email.text);
    print(name.text);
    print(address.text);
    print(late.text);
    print(long.text);
    print(password.text);
    print(phone.text);
    print(profile.text);
    print(image1.text);
    print(image2.text);
    print(image3.text);
    print(opining.text);
    print(color.text);
    print(type);
    print(avilability);
    return Scaffold(
      backgroundColor: const Color(0xffEAE3D1),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3.3,
                height: MediaQuery.of(context).size.height,
                color: Colors.indigo.shade300,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 70.0, right: 50.0, left: 50.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundColor: Color(0xffEAE3D1),
                          backgroundImage: NetworkImage(
                            'https://jideguru.github.io/static/img/profile.png',
                          ),
                          radius: 70.0,
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: const Text(
                            "Let's get your Data",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: const Text(
                            "It should put only the needed Data",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          child: const CircleAvatar(
                            backgroundColor: Color(0xffEAE3D1),
                            child: Text(
                              ">",
                              style: TextStyle(color: Color(0xFF44619D)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 40.0, right: 70.0, left: 70.0, bottom: 40.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //InputField Widget from the widgets folder
                      InputField(
                        label: "Email",
                        content: "yo@seethat.com",
                        controller: email,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Password",
                        content: "*************",
                        controller: password,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Name",
                        content: "Name",
                        controller: name,
                      ),

                      const SizedBox(height: 20.0),

                      //Gender Widget from the widgets folder

                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Type"),
                          const SizedBox(
                            width: 150,
                          ),
                          DropDown(
                            items: const [
                              "Governmental",
                              "Special Center",
                              "Charities",
                            ],
                            hint: const Text("Governmental"),
                            icon: const Icon(
                              Icons.expand_more,
                              color: Colors.blue,
                            ),
                            onChanged: (val) {
                              type = val!;
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Mobile",
                        content: "+22994684468",
                        controller: phone,
                      ),

                      const SizedBox(height: 20.0),

                      //InputField Widget from the widgets folder
                      InputField(
                        label: "Address",
                        content: "Tanta",
                        controller: address,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Late",
                        content: "0000000000",
                        controller: late,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Long",
                        content: "0000000000",
                        controller: long,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Profile Photo",
                        content: "Image",
                        controller: profile,
                      ),
                      const SizedBox(height: 20.0),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Images",
                        content: "List of Images",
                        controller: image1,
                      ),
                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Images",
                        content: "List of Images",
                        controller: image2,
                      ),
                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Images",
                        content: "List of Images",
                        controller: image3,
                      ),
                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Color",
                        content: "Color of Icon",
                        controller: color,
                      ),

                      const SizedBox(height: 20.0),

                      InputField(
                        label: "Opining",
                        content: "Your Opinion",
                        controller: opining,
                      ),

                      const SizedBox(height: 20.0),

                      Row(
                        children: [
                          const Text("Avilability"),
                          const SizedBox(
                            width: 150,
                          ),
                          DropDown(
                            items: const ["True", "False"],
                            hint: const Text("True"),
                            icon: const Icon(
                              Icons.expand_more,
                              color: Colors.blue,
                            ),
                            onChanged: (val) {
                              avilability = val!;
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //Membership Widget from the widgets folder

                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 170.0,
                          ),
                          MaterialButton(
                            color: Colors.grey[200],
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          MaterialButton(
                            color: const Color(0xFF0467C2),
                            onPressed: () {
                              if (widget.isAdd) {
                                login(
                                    email: email.text,
                                    pass: password.text,
                                    name: name.text,
                                    phone: phone.text,
                                    address: address.text,
                                    type: type,
                                    availability: avilability,
                                    late: late.text,
                                    long: long.text,
                                    profile: profile.text,
                                    img1: image1.text,
                                    img2: image2.text,
                                    img3: image3.text,
                                    color: color.text,
                                    icon: '',
                                    open: opining.text);
                              } else {
                                updateData(
                                    uid: widget.uid,
                                    email: email.text,
                                    name: name.text,
                                    phone: phone.text,
                                    address: address.text,
                                    type: type,
                                    availability: avilability,
                                    late: late.text,
                                    long: long.text,
                                    profile: profile.text,
                                    img1: image1.text,
                                    img2: image2.text,
                                    img3: image3.text,
                                    color: color.text,
                                    icon: '',
                                    open: opining.text);
                              }
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: Text(
                              widget.isAdd ? "Save" : "Update",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
