import 'package:get/get.dart';
import 'package:marvel_heroes/app/module/home/domain/entity/dados.entity.dart';

class DetailsController extends GetxController {
  Rxn<Dados> dados = Rxn<Dados>();
  RxInt age = 0.obs;
  RxBool showProgress = true.obs;

  @override
  void onInit() {
    super.onInit();
    dados.value = Get.arguments;
    DateTime hoje = DateTime.now();
    DateTime birth = DateTime(int.parse(dados.value!.caracteristics.birth));
    age.value = hoje.year - birth.year;

    showProgress.value = false;
  }
}