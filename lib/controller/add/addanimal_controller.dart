import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:petcare/data/datasource/remote/pets/createpet.dart';

class AddanimalController extends GetxController {
  Createpet createpetdata = Createpet();
  bool isloading = false;
  TextEditingController name = TextEditingController();
  TextEditingController species = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();

  TextEditingController foundname = TextEditingController();
  TextEditingController foundspecies = TextEditingController();
  TextEditingController foundaddress = TextEditingController();
  TextEditingController foundphone = TextEditingController();

  String? cat;
  String? sex;

  GlobalKey<FormState> addanimalform = GlobalKey<FormState>();

  choosepet(String category) {
    cat = category;
    update();
  }

  choosesex(String mysex) {
    sex = mysex;
    update();
  }

  Future<void> createDisappearedPet() async {
    isloading = !isloading;
    update();
    try {
      await createpetdata.createDisappearedPet(
          cat!, name.text, species.text, sex!, address.text, phone.text);
      isloading = !isloading;
      update();
      Get.back();
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> createFoundPet() async {
    isloading = !isloading;
    update();
    try {
      await createpetdata.createFoundPet(
          cat!, foundspecies.text, sex!, foundaddress.text, foundphone.text);
      isloading = !isloading;
      update();
      Get.back();
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
