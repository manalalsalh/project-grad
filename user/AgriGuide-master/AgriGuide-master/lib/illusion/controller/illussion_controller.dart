import 'package:first_app/generted/shared/util.dart';
import 'package:first_app/illusion/view/show_illusion.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class IllusionController extends GetxController {
  var IllussionsList = <kindIllussion>[];
  var element = kindIllussion("", "", "");
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

  @override
  Future<void> onInit() async {
    super.onInit();
    fullIllusssion();
  }

  void fullIllusssion() {
    IllussionsList.add(kindIllussion('assets/images/i1.jpg', " الحلزون",
        "الحاق الضرر بالمزروعات ,واحداث ثقوب في اوراقها ترك الاثار اللزجة في الاماكن التي تكون فيها , خلال انزلاقها على اوراق النبتات وايضا يتسبب بازالة مادة اللحاء عن الاشجار الصغيرة"));

    IllussionsList.add(kindIllussion('assets/images/i3.jpg', "فيروس النبرقش",
        "ظهور تشوهات على الاوراق المصابة .كما ويظهر تبرقش ذو لون اخضر واصفر على الاوراق . وتصاب النباتات بالتقزم بدرجات متفاوتة وقد تنقص كميات الثمار بشدة . وكذلك ظهور بقع ذات لون بني على اسطح الثمار الناضجة وبقعا بنية داخلية في لب الثمرة ."));
    IllussionsList.add(kindIllussion('assets/images/i4.jpg', "الذبابة البيضاء",
        "هي حشرة صغيرة بيضاء تحت الاوراق وتشبه في تجمعها رماد السيجارة تعمل على امتصاص العصارة , وتؤدي الى جفاف االنبات حيث تتحول الى اللون الاصفر ."));

    IllussionsList.add(kindIllussion('assets/images/i6.jpg', "العنكبوت الاحمر",
        "يسبب نسيجا عنكبوتيا على اوراق مثقبة ,ويظهر في مجموعات ليصيب الاجزاء الخضراء والاوراق فتظهر منطقة باللون الاصفر او البني المحمر (الصدا) ."));
    IllussionsList.add(kindIllussion('assets/images/i7.jpg', "البق الدقيقي",
        "وهي حشرة مستديرة بيضاء تكون نسيجا عنكبوتيا .يشبه الزغب,ويوجد في تجميعات عنقودية على عنق الورقة او قاعدة العنق تمتص العصارة النباتية وتوقف النمو الطبيعي للنبات , وقد تؤدي الى موت النبات حيث توجد دواىر بنية فاتحة شمعية صغيرة بظهر الاوراق تمتص عصارة النبات وتترك بقايا لزجة ."));
    IllussionsList.add(kindIllussion('assets/images/i8.jpg', "حشرة المن ",
        "على الاوراق والبراعم الصغيرة تسبب ثقوب مصفرة بسبب لسعات الحشرة بغرض التغذية,يتم ملاحظة اليرقات وافراد الحشرة البالغة على الجانب السفلي للاوراق .افراز المن للعسلية يحفز على تطور الفوماجين (العفن السخامي)."));
    IllussionsList.add(kindIllussion('assets/images/i9.jpg', "النمل",
        "النمل الاحمر والاسود يؤدي الى ثقب السوق والجذور وتعيش بداخلها ,والمشكلة ليست في الاصابة ولكنه يجذب بعض الانواع من الحشرات الاخطر,مثل التربس او البق الدقيقي"));
    IllussionsList.add(kindIllussion('assets/images/i2.jpg', "ابو مقص",
        "تتغذى حشرة ابو مقص على مجموعة من الزهور والخضراوات ,مسببة بعض الثقوب غير المنتظمة فيها . وايضا تهاجم الشتلات الغيرة على نحو محدد ."));
    IllussionsList.add(kindIllussion(
        'assets/images/i10.jpg',
        "لفحة الاوراق - تبقع الاوراق ",
        "تكون بقع لونها اصفر او احمر او بني على سطح الاوراق ,وبعض البقع تسقط بعد جفافها وتظهر الاصابة عند الرطوبة وعدم وجود هواء متجدد في المكان , حيث يكون ما يشبه الدقيق الطري على الاوراق والبراعم الزهرية."));
    IllussionsList.add(kindIllussion('assets/images/i11.jpg', "عفن التاج",
        "هو مرض فطري يصيب البادرات فيسبب عفن الساق قرب سطح التربة فيتحول الى اللون البني ويصبح لينا."));
    IllussionsList.add(kindIllussion('assets/images/i5.jpg', "التربس",
        "عبارة عن نقط برازية او بقع كبيرة بنية او سوداء ,حيث يتغذى على البراعم الزهرية من الداخل ونادرا ما تتفتح الزهور المصابة , ويؤدي ايضا الى برم حواف الاوراق وتغير اللون للاجزاء الخضراء والافرخ الجديدة -غالبا تطير عند الازعاج ."));
  }
}
