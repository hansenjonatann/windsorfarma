import 'package:get/get.dart';
import 'package:windsorfarma/app/modules/login/views/login_view.dart';

class AccountController extends GetxController {
  doLogout() async {
    Get.offAll(LoginView());
  }

  List<Map<String, dynamic>> users = [
    {
      "id": 1,
      "email": "george.bluth@reqres.in",
      "name": "George Bluth",
      "avatar": "https://reqres.in/img/faces/1-image.jpg"
    },
    {
      "id": 2,
      "email": "janet.weaver@reqres.in",
      "name": "Janet Weaver",
      "photo": "https://reqres.in/img/faces/2-image.jpg"
    },
    {
      "id": 3,
      "email": "emma.wong@reqres.in",
      "name": "Emma Wong",
      "photo": "https://reqres.in/img/faces/3-image.jpg"
    },
    {
      "id": 4,
      "email": "eve.holt@reqres.in",
      "name": "Eve Holt",
      "photo": "https://reqres.in/img/faces/4-image.jpg"
    },
    {
      "id": 5,
      "email": "charles.morris@reqres.in",
      "name": "Charles Morris",
      "photo": "https://reqres.in/img/faces/5-image.jpg"
    },
    {
      "id": 6,
      "email": "tracey.ramos@reqres.in",
      "name": "Tracey Ramos",
      "photo": "https://reqres.in/img/faces/6-image.jpg"
    }
  ];
}
