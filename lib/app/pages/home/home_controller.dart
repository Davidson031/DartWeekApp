// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dart_week_app/app/repositories/products/products_repository.dart';
import 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  final ProductsRepository _productsRepository;

  HomeController(
    this._productsRepository,
  ) : super(const HomeState.initial());

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));

    try {

      final products = await _productsRepository.findAllProducts();

      emit(state.copyWith(status: HomeStateStatus.loaded, products: products));

    } on Exception catch (e, s) {

      log("Erro ao buscar produtos", error: e, stackTrace: s);

      emit(state.copyWith(status: HomeStateStatus.error, errormessage: "Erro ao buscar produtos"));

    }

    
  }
}
