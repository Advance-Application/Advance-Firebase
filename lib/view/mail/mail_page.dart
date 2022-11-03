import 'package:advance_firebase/repo/mail_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MailPage extends StatefulWidget {
  const MailPage({Key? key}) : super(key: key);

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
              child: CupertinoTextField(
                controller: MailRepo.mailController,
                placeholder: "Enter Message",
                maxLines: 4,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CupertinoButton(
              color: Colors.orangeAccent,
                child:const Text("Send Mail"),
                onPressed: () async {
                  await MailRepo().sendMail();
                  // await MailRepo().getFruit();
                })
          ],
        ),
      ),
    );
  }
}
