import '../imports.dart';

class ArticleSend extends StatefulWidget {
  const ArticleSend({super.key});

  @override
  State<ArticleSend> createState() => _ArticleSendState();
}

class _ArticleSendState extends State<ArticleSend> {
  var numberController = TextEditingController();
  var nameController = TextEditingController();
  var secondnameController = TextEditingController();
  var passwordController = TextEditingController();

  _doSignIn() {
    String number = numberController.text.toString().trim();
    String name = nameController.text.toString().trim();
    String secondname = secondnameController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    if (number.isEmpty &&
        name.isEmpty &&
        secondname.isEmpty &&
        password.isEmpty) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ism",
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
                controller: nameController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 17, color: Colors.white54)),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Text",
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
                controller: secondnameController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    helperText: "Matn kiriting",
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 17, color: Colors.white54)),
              ),
            ),
            const SizedBox(
              height: 56,
            ),
            GestureDetector(
              onTap: () {
                _doSignIn();
              },
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 156, 22, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    "Saqlash",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
