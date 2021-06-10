import 'package:get/get.dart';
import 'package:get_connect/app/data/providers/api_client_provider.dart';
import 'package:get_connect/app/data/repositories/client_repository.dart';
import 'package:get_connect/app/data/utils/client_request.dart';
import 'package:get_connect/app/modules/initial/initial_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    final ClientRequest clientRequest = ClientRequest();
    Get.lazyPut<InitialController>(
      () => InitialController(
        repository: ClientRepository(
          apiClient: ApiClientProvider(
            clientRequest: clientRequest,
          ),
        ),
      ),
    );
  }
}
