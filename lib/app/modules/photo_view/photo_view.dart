import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  const ImageView({
    Key? key,
    this.imageUrl,
    this.file,
  }) : super(key: key);
  final String? imageUrl;
  final File? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: (imageUrl != null)
                  ? PhotoView(
                      imageProvider: NetworkImage(imageUrl!),
                    )
                  : (file != null)
                      ? PhotoView(imageProvider: FileImage(file!))
                      : const SizedBox.shrink(),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: Get.back,
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
