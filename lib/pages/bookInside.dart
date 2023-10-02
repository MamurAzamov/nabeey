import 'package:flutter/material.dart';

class BookInside extends StatefulWidget {
  const BookInside({super.key});

  @override
  State<BookInside> createState() => _BookInsideState();
}

class _BookInsideState extends State<BookInside> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            "Ruhiy tarbiya",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 148,
                  width: 121,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.figma.com/file/mm3xkDEmbPovfKyv3zHmv4/image/b0b946d46ce4276c12e547878ab2d2f0bc841169"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),

                  ),
                ),
                Container(
                  width: 185,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oltin silsila",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text("Shayx Muhammad Sodiq Muhammad Yusuf",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                )
              ],
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      )
    );
  }
}
