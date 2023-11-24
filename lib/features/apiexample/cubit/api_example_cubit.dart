import 'package:bloc/bloc.dart';
import 'package:habitat/features/apiexample/cubit/cat_api.dart';
import 'package:habitat/model/cat/cat.dart';
import 'package:meta/meta.dart';

part 'api_example_state.dart';

class ApiExampleCubit extends Cubit<ApiExampleState> {
  ApiExampleCubit({required this.client}) : super(ApiExampleInitial());

  final CatRestClient client;

  Future<void> fetchData() async {
    try {
      emit(ApiExampleLoading());
      final data = await _makeApiRequest();
      emit(ApiExampleLoaded(data));
    } catch (e) {
      emit(ApiExampleError(e.toString()));
    }
  }

  Future<List<CatFact>> _makeApiRequest() async {
    final data = await client.getFacts();
    return data;
  }
}
