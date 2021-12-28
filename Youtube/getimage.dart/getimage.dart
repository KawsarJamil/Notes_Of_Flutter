import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class getimage extends StatefulWidget {
  const getimage({Key? key}) : super(key: key);

  @override
  State<getimage> createState() => _getimageState();
}

class _getimageState extends State<getimage> {
  var _image;
  final picker = ImagePicker();
  Future getimg() async {
    final pickedfile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedfile != null) {
        _image = File(pickedfile.path);
        print(_image);
      } else
        print("No Image");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
            _image == null ? const Text("Image not found") : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          getimg();
        },
      ),
    );
  }
}
