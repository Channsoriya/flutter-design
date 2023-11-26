import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});
  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}
class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  // ignore: non_constant_identifier_names
  File? image_picker;
  Future<void> uploadImage(String type)async{
    final picker = ImagePicker();
    final XFile? pickfile = await picker.pickImage(source: type=='Camera' ? ImageSource.camera : ImageSource.gallery);
    if(pickfile!=null){
      setState(() {
        image_picker = File(pickfile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            uploadImage('Camera');
          },
          icon: const Icon(
            Icons.camera_alt
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Image Picker'
        ),
        actions: [
          IconButton(
            onPressed: () {
              uploadImage('Gallery');
            },
            icon: const Icon(
              Icons.image
            ),
          )
        ],
      ),
      body: image_picker!=null ? Image.file(
        image_picker!,
        fit: BoxFit.cover,
        height: 200,
        width: double.infinity,
        ) : Container(
        height: 200,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.grey
        ),
        child: const Text(
          'No Image'
        ),
      )
    );
  }
}