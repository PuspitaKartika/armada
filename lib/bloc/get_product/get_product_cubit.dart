import 'package:armada/model/product_model.dart';
import 'package:armada/repositories/product_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit() : super(GetProductInitial());
  final _repo = ProductRepo();

  void fetchProduct({BuildContext? context}) async {
    emit(GetProductLoading());
    try {
      final data = await _repo.getProduct(context!);
      emit(GetProductSuccess(data: data.data!));
    } catch (e) {
      emit(GetProductFailure(message: e.toString()));
    }
  }
}
