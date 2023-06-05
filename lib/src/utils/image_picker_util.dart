import 'package:image_picker/image_picker.dart';

// GET IMAGE
enum GetImageFrom {
  gallery,
  camera,
}

// IMAGE PICKER
class ImagePickerUtil {
  static Future<XFile?> getImage(GetImageFrom source) async {
    final pickedFile = await ImagePicker().pickImage(
      source: source == GetImageFrom.camera
          ? ImageSource.camera
          : ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    return pickedFile;
  }
}
