// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dart_week_app/app/dto/order_product_dto.dart';
import 'package:dart_week_app/app/repositories/products/products_repository.dart';
import '../../models/product_model.dart';
import 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  final ProductsRepository _productsRepository;

  List<ProductModel> products = [];

  HomeController(
    this._productsRepository,
  ) : super(const HomeState.initial());

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));

    try {
      products = await _productsRepository.findAllProducts();

      await Future.delayed(const Duration(seconds: 2));

      emit(state.copyWith(status: HomeStateStatus.loaded, products: products));
    } on Exception catch (e, s) {
      log("Erro ao buscar produtos", error: e, stackTrace: s);

      emit(state.copyWith(
          status: HomeStateStatus.error,
          errormessage: "Erro ao buscar produtos"));
    }
  }

  void addOrUpdateBag(OrderProductDto orderProduct) {
    final shoppingBag = [...state.shoppingBag];

    final orderIndex = shoppingBag
        .indexWhere((orderP) => orderP.product == orderProduct.product);

    if (orderIndex > -1) {
      if (orderProduct.amount == 0) {
        shoppingBag.removeAt(orderIndex);
      } else {
        shoppingBag[orderIndex] = orderProduct;
      }
    } else {
      shoppingBag.add(orderProduct);
    }

    emit(state.copyWith(shoppingBag: shoppingBag));
  }

  void updateBag(List<OrderProductDto> updatedBag){
    emit(state.copyWith(shoppingBag: updatedBag));
  }
}
