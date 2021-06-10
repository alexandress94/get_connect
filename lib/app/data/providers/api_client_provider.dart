import 'package:get/get_connect/connect.dart';
import 'package:get_connect/app/data/models/todo_model.dart';
import 'package:get_connect/app/data/utils/client_request.dart';

class ApiClientProvider extends GetConnect {
  final ClientRequest clientRequest;
  static final _url = 'https://jsonplaceholder.typicode.com/todos';

  ApiClientProvider({required this.clientRequest});

  Future<List<TodoModel>> getAll() async {
    final response = await clientRequest.get(_url);
    try {
      if (response.statusCode == 200) {
        List<dynamic> data = response.body;
        return data.map((model) => TodoModel.fromJson(model)).toList();
      }else{
        // return <TodoModel>[];
        throw Exception('Falha na conexão');
      }
    } catch (error) {
      // return <TodoModel>[];
      throw Exception('Nenhuma requisição obtida: $error');
    }
  }
}
