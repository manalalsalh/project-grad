import 'package:first_app/care/view/care_kind.dart';
import 'package:get/get.dart';

class AgricultureController extends GetxController {
  var AgricultureList = <kindCare>[];
  var element = kindCare("", "");
  void full() {
    AgricultureList.add(kindCare("الية الزراعة الحديثة",
        "تتم من خلال وضع النبتة في ظرف بيئي مناسب وملائم من درجة الحرارة والطقس والعناية الطبيعية ."));
    AgricultureList.add(kindCare("الية الزراعة التقليدية",
        "تتم من خلال وضع النبتة في ظرف بيئي مناسب وملائم من درجة الحرارة والطقس والعناية الطبيعية ."));
  }
}
