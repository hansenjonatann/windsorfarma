import 'package:get/get.dart';
import 'package:windsorfarma/app/routes/app_pages.dart';

class AccountController extends GetxController {
  doLogout() async {
    Get.offNamed(Routes.LOGIN);
  }
}
