import 'package:flutter/cupertino.dart';
import 'package:cloud_functions/cloud_functions.dart';
class MailRepo {
  static TextEditingController mailController = TextEditingController();

  Future<void> sendMail() async {}


  Future<void> getFruit() async {
    HttpsCallable callable = FirebaseFunctions.instance.httpsCallable('listFruit');
    final results = await callable();
    List fruit = results.data;  // ["Apple", "Banana", "Cherry", "Date", "Fig", "Grapes"]
    print(fruit);
  }
}
