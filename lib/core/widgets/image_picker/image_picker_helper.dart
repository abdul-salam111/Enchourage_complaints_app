import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'image_picker_provider.dart';

class ImagePickerHelper {
  // Show image source dialog
  static Future<void> showImagePicker(
    BuildContext context, {
    bool allowMultiple = false,
  }) async {
    final provider = context.read<ImagePickerProvider>();
    await provider.showImageSourceDialog(context, allowMultiple: allowMultiple);
  }

  // Quick pick from camera
  static Future<void> pickFromCamera(BuildContext context) async {
    final provider = context.read<ImagePickerProvider>();
    await provider.addImageToList(context, ImageSource.camera);
  }

  // Quick pick from gallery
  static Future<void> pickFromGallery(BuildContext context) async {
    final provider = context.read<ImagePickerProvider>();
    await provider.addImageToList(context, ImageSource.gallery);
  }
}
