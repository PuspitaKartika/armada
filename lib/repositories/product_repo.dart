import 'package:armada/model/product_model.dart';
import 'package:armada/services/base_services.dart';
import 'package:flutter/material.dart';

class ProductRepo extends BaseService {
  Future<ProductModel> getProduct(BuildContext context) async {
    final res = await request(context, 'products?populate=%2A');
    print(res.data);
    return ProductModel.fromJson(res.data);
  }
}
