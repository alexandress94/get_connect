import 'package:get_connect/app/data/models/todo_model.dart';
import 'package:get_connect/app/data/providers/api_client_provider.dart';

class ClientRepository{
  final ApiClientProvider apiClient;

  ClientRepository({required this.apiClient});

  Future< List< TodoModel >>getAll(  ) async {
    return await apiClient.getAll(  );
  }
}