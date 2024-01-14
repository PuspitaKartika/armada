part of 'get_product_cubit.dart';

sealed class GetProductState extends Equatable {
  const GetProductState();

  @override
  List<Object> get props => [];
}

final class GetProductInitial extends GetProductState {}

final class GetProductLoading extends GetProductState {}

final class GetProductSuccess extends GetProductState {
  final List<ProductModelDatum> data;

  const GetProductSuccess({required this.data});
}

final class GetProductFailure extends GetProductState {
  final String message;

  const GetProductFailure({required this.message});
}
