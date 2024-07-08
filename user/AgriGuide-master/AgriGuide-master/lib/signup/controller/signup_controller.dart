import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../generted/shared/util.dart';

class SignUpController extends GetxController {
  var passtoggle = true.obs;
  final ImagePicker imagepicker = ImagePicker();
  PickedFile? imagefile;
  final stringPickImage = ''.obs;
  Future pickImageFun() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      stringPickImage.value = Utility.base64String(await image.readAsBytes());
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }
}
