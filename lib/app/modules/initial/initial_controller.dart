import 'package:get/get.dart';
import 'package:get_connect/app/data/models/todo_model.dart';
import 'package:get_connect/app/data/repositories/client_repository.dart';

class InitialController extends GetxController with StateMixin<List<TodoModel>>{
  final ClientRepository repository;
  RxList<TodoModel> todoModel = <TodoModel>[].obs;

  InitialController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    findTodos();
  }

  Future<void> findTodos() async{
    change([], status: RxStatus.loading());
    try{
      todoModel.value = await repository.getAll();
      change(todoModel, status: RxStatus.success());
    }catch (error){
      change([], status: RxStatus.error());
      throw Exception('Falha na conexão.');
    }
  }
} 