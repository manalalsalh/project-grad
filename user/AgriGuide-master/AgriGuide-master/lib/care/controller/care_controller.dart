import 'package:first_app/care/view/care_kind.dart';
import 'package:get/get.dart';

class CareController extends GetxController {
  var CareList = <kindCare>[];
  var element = kindCare("", "");
  void full() {
    CareList.add(kindCare(" الحماية الطبيعية",
        "تتم من خلال وضع النبتة في ظرف بيئي مناسب وملائم من درجة الحرارة والطقس والعناية الطبيعية ."));
  }
}
