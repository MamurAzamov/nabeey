import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nabeey_app/pages/confirm_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
  static const String id = "signup";
}

class _SignUpPageState extends State<SignUpPage> {
  var numberController = TextEditingController();
  var nameController = TextEditingController();
  var familyController = TextEditingController();

  _doSignIn() {
    String num = numberController.text.toString().trim();
    String name = nameController.text.toString().trim();
    String family = familyController.text.toString().trim();
    if (num.isEmpty && name.isEmpty && family.isEmpty) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ConfirmPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 72),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Quiz da qatnashish uchun ",
              style: TextStyle(
                color: Color.fromRGBO(0, 123, 236, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 8,),
            Text(
              "Ro’yxatdan o’ting",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 28,),
            const Text(
              "Ism",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  style: BorderStyle.solid,
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                controller: nameController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 17, color: Colors.white54)
                ),
              ),
            ),
            SizedBox(height: 12,),
            const Text(
              "Familiya",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  style: BorderStyle.solid,
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                controller: familyController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 17, color: Colors.white54)
                ),
              ),
            ),
            SizedBox(height: 12,),
            const Text(
              "Tel raqam",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 10),
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    style: BorderStyle.solid,
                    color: Colors.grey,
                  ),
                ),
                child: TextField(
                  controller: numberController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                      hintText: "+998",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 14,)
                  ),
                ),
            ),
            const SizedBox(height: 56,),
            GestureDetector(
              onTap: (){
                _doSignIn();
              },
              child: Container(
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 156, 22, 1),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Center(
                    child: Text(
                      "Ro’yxatdan o’tish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
              ),
            )

          ],
        ),
      ),
    );
  }
}
