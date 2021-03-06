import 'package:profectus/app/data/provider/ibge_provider.dart';
import 'package:profectus/app/data/repository/user_repository.dart';
import 'package:profectus/app/modules/landing/landing_controller.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(() => LandingController(
        repository:
            UserRepository(apiClient: IBGEClient(httpClient: http.Client()))));
  }
}
