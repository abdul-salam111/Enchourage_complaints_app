import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerProvider extends ChangeNotifier {
  final ImagePicker _picker = ImagePicker();

  List<File> _selectedImages = [];
  List<File> get selectedImages => _selectedImages;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  // Pick single image
  Future<File?> pickSingleImage(
    BuildContext context,
    ImageSource source,
  ) async {
    try {
      _setLoading(true);
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        imageQuality: 80,
      );

      if (pickedFile != null) {
        final file = File(pickedFile.path);
        _setLoading(false);
        return file;
      }
      _setLoading(false);
      return null;
    } catch (e) {
      _setLoading(false);
      debugPrint('Error picking image: $e');
      return null;
    }
  }

  // Pick multiple images (only from gallery)
  Future<void> pickMultipleImages() async {
    try {
      _setLoading(true);
      final List<XFile> pickedFiles = await _picker.pickMultiImage(
        imageQuality: 80,
      );

      if (pickedFiles.isNotEmpty) {
        _selectedImages = pickedFiles.map((file) => File(file.path)).toList();
      }
      _setLoading(false);
      notifyListeners();
    } catch (e) {
      _setLoading(false);
      debugPrint('Error picking multiple images: $e');
    }
  }

  // Add single image to list
  Future<void> addImageToList(BuildContext context, ImageSource source) async {
    try {
      _setLoading(true);
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        imageQuality: 80,
      );

      if (pickedFile != null) {
        _selectedImages.add(File(pickedFile.path));
      }
      _setLoading(false);
      notifyListeners();
    } catch (e) {
      _setLoading(false);
      debugPrint('Error adding image: $e');
    }
  }

  // Remove image from list
  void removeImage(int index) {
    if (index >= 0 && index < _selectedImages.length) {
      _selectedImages.removeAt(index);
      notifyListeners();
    }
  }

  // Clear all images
  void clearImages() {
    _selectedImages.clear();
    notifyListeners();
  }

  // Show picker dialog
  Future<void> showImageSourceDialog(
    BuildContext context, {
    bool allowMultiple = false,
  }) async {
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Choose Image Source',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                // Camera Option
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.camera_alt, color: Colors.blue),
                  ),
                  title: const Text('Camera'),
                  subtitle: const Text('Take a photo'),
                  onTap: () async {
                    Navigator.pop(context);
                    if (allowMultiple) {
                      await addImageToList(context, ImageSource.camera);
                    } else {
                      await pickSingleImage(context, ImageSource.camera);
                    }
                  },
                ),
                const Divider(),

                // Gallery Option
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.photo_library, color: Colors.green),
                  ),
                  title: const Text('Gallery'),
                  subtitle: Text(
                    allowMultiple
                        ? 'Choose from gallery'
                        : 'Pick a single photo',
                  ),
                  onTap: () async {
                    Navigator.pop(context);
                    if (allowMultiple) {
                      await addImageToList(context, ImageSource.gallery);
                    } else {
                      await pickSingleImage(context, ImageSource.gallery);
                    }
                  },
                ),

                // Multiple Images Option (only if allowMultiple is true)
                if (allowMultiple) ...[
                  const Divider(),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.photo, color: Colors.purple),
                    ),
                    title: const Text('Multiple Images'),
                    subtitle: const Text('Select multiple photos'),
                    onTap: () async {
                      Navigator.pop(context);
                      await pickMultipleImages();
                    },
                  ),
                ],

                const SizedBox(height: 10),

                // Cancel Button
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
