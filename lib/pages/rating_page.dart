import 'package:flutter/cupertino.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});
  static const String id = 'rating_page';

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Can't load rating"),
    );
  }
}
