import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

CollectionReference? addUser;
User? user = FirebaseAuth.instance.currentUser;

void addCenterData({
  email,
  pass,
  name,
  type,
  phone,
  address,
  late,
  long,
  profile,
  img1,
  img2,
  img3,
  color,
  icon,
  open,
  availability,
  uid,
}) {
  FirebaseFirestore.instance.collection('home').doc(uid).set({
    'email': email,
    'name': name,
    'type': type,
    'phone': phone,
    'address': address,
    'late': late,
    'long': long,
    'profile': profile,
    'color': color,
    'icon': icon,
    'image': [img1, img2, img3],
    'open': open,
    'availability': availability,
    'date': DateTime.now(),
    'uid': uid,
  });
}

addDataEmail(String name, String email) async {
  final time = DateTime.now().millisecondsSinceEpoch.toString();
  addUser = FirebaseFirestore.instance.collection('users');
  addUser?.doc('${user?.uid}').set({
    'email': email,
    'name': name,
    'Phone': '',
    'id': user?.uid,
    'image': 'null',
    'created_at': time,
    'is_online': false,
    'last_active': time,
    'push_token': '',
    'isUser':false
  });
}

login(
    {email,
    pass,
    name,
    type,
    phone,
    address,
    late,
    long,
    profile,
    img1,
    img2,
    img3,
    color,
    icon,
    open,
    availability,
    context}) async {
  try {
    if (email.isNotEmpty && pass.isNotEmpty) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass)
          .then((value) {
        addCenterData(
          email: email,
          name: name,
          phone: phone,
          type: type,
          address: address,
          late: late,
          long: long,
          profile: profile,
          img1: img1,
          img2: img2,
          img3: img3,
          color: color,
          icon: icon,
          open: open,
          availability: availability,
          uid: value.user!.uid,
        );
        addDataEmail(name, email);
        print(value.credential);
      });
    } else {
      print('isEmpty');
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.INFO,
        animType: AnimType.BOTTOMSLIDE,
        title: 'Attend  !',
        desc: 'This Account IsNot Exist',
        btnCancelOnPress: () {},
        btnOkOnPress: () {},
      ).show();
    } else if (e.code == 'wrong-password') {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.INFO,
        animType: AnimType.BOTTOMSLIDE,
        title: 'Attend  !',
        desc: 'The password is Wrong',
        btnOkOnPress: () {},
      ).show();
    }
  } catch (e) {
    print(e);
  }
}

Future login1(String email, pass, {context}) async {
  try {
    if (email.isNotEmpty && pass.isNotEmpty) {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
      print(userCredential);
      return userCredential;
    } else {
      print('isEmpty');
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.INFO,
        animType: AnimType.BOTTOMSLIDE,
        title: 'Attend  !',
        desc: 'This Account IsNot Exist',
        btnCancelOnPress: () {},
        btnOkOnPress: () {},
      ).show();
    } else if (e.code == 'wrong-password') {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.INFO,
        animType: AnimType.BOTTOMSLIDE,
        title: 'Attend  !',
        desc: 'The password is Wrong',
        btnOkOnPress: () {},
      ).show();
    }
  } catch (e) {
    print(e);
  }
}

Future getHospitalData() async {
  var fireStore = FirebaseFirestore.instance;
  QuerySnapshot qn = await fireStore.collection("home").get();
  return qn.docs;
}

updateData({
  email,
  name,
  type,
  phone,
  address,
  late,
  long,
  profile,
  img1,
  img2,
  img3,
  color,
  icon,
  open,
  availability,
  uid,
}) {
  FirebaseFirestore.instance.collection('home').doc(uid).update(
    {
      'email': email,
      'name': name,
      'type': type,
      'phone': phone,
      'address': address,
      'late': late,
      'long': long,
      'profile': profile,
      'color': color,
      'manager': '',
      'icon': icon,
      'image': [img1, img2, img3],
      'open': open,
      'availability': availability,
      'date': DateTime.now(),
      'uid': uid,
    },
    // SetOptions(merge: true),
  );
}

delete(String uid) {
  FirebaseFirestore.instance.collection('home').doc(uid).delete();
}
