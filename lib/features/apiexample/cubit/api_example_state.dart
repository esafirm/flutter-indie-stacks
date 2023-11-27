part of 'api_example_cubit.dart';

@immutable
abstract class ApiExampleState {}

class ApiExampleInitial extends ApiExampleState {}

class ApiExampleLoading extends ApiExampleState {}

class ApiExampleLoaded extends ApiExampleState {
  ApiExampleLoaded(this.data);
  final List<CatFact> data;
}

class ApiExampleError extends ApiExampleState {
  ApiExampleError(this.message);
  final String message;
}
