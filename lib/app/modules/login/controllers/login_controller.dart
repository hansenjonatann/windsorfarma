import 'package:get/get.dart';
import 'package:windsorfarma/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final isLoading = false.obs;

  Future login() async {
    Get.offNamed(Routes.HOME);
  }
}
