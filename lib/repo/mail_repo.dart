import 'package:flutter/cupertino.dart';
import 'package:cloud_functions/cloud_functions.dart';
class MailRepo {
  static TextEditingController mailController = TextEditingController();
static String apiKey="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";
  Future<void> sendMail() async {
    HttpsCallable callable = FirebaseFunctions.instance.httpsCallable('sendMail');
    final resp = await callable.call(<String, dynamic>{
      'key': apiKey,
      'to': "narendra.bisht@breathtechnologies.com",
      'toName':"Narendra Bisht",
      'from':"amarpatelb2022@gmail.com",
      'subject':"That is from Testing",
      'html':"<h2>${mailController.text}</h2>"
    });
    print("result: ${resp.data}");
  }


  Future<void> getFruit() async {
    HttpsCallable callable = FirebaseFunctions.instance.httpsCallable('listFruit');
    final results = await callable();
    print(results.data);
  }
}
