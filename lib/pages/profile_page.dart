import 'dart:io';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nabeey_app/pages/article_send.dart';
import 'package:nabeey_app/pages/profile_edit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static const String id = 'profile_page';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  _imgFromGallery() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _image = File(image!.path);
    });
    _apiChangedPhoto();
  }
  _imgFromCamera() async {
    XFile? photo = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      _image = File(photo!.path);
    });
    _apiChangedPhoto();
  }

  void _apiChangedPhoto() {
    if(_image == null) return;
    // setState(() {
    //   isLoading = true;
    // });
    // FileService.uploadUserImage(_image!).then((downloadUrl) => {
    //   _apiUpdateUser(downloadUrl),
    // });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Wrap(
              children: [
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Pick Photo'),
                    onTap: () {
                      _imgFromGallery();
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Take Photo'),
                  onTap: () {
                    _imgFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.figma.com/file/mm3xkDEmbPovfKyv3zHmv4/image/4ec532c109d74c7953455693d1feadadd53f92ea"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 1),
                      Color.fromRGBO(0, 0, 0, 0.0),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Lrem ipsum",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        _showPicker(context);
                      },
                      child: Container(
                        alignment: Alignment.bottomRight,
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(66),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Icon(Icons.camera_alt_outlined, size: 24,),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfileEdit(),
                  ),
                );
               // navigationBloc.add(NavigationEvent.navigateToBookPage);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 72, left: 20, right: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Feather.edit,color: Color.fromRGBO(245, 156, 22, 1),),
                        SizedBox(width: 20,),
                        Text(
                          "Profilni tahrirlash",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(Feather.chevron_right)
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
              color: const Color.fromRGBO(0, 0, 0, 0.2),
              height: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ArticleSend(),
                  ),
                );
                // navigationBloc.add(NavigationEvent.navigateToBookPage);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Feather.send,color: Color.fromRGBO(245, 156, 22, 1),),
                        SizedBox(width: 20,),
                        Text(
                          "Maqola jo’natish",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(Feather.chevron_right)
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
              color: const Color.fromRGBO(0, 0, 0, 0.2),
              height: 1,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Feather.corner_down_left,color: Color.fromRGBO(245, 156, 22, 1),),
                      SizedBox(width: 20,),
                      Text(
                          "Chiqish",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                      ),
                    ],
                  ),
                  Icon(Feather.chevron_right)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
              color: const Color.fromRGBO(0, 0, 0, 0.2),
              height: 1,
            ),
          ],
        )
      ),
    );
  }
}
