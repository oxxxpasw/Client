import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/assortment_mapper.dart';
import 'package:sosedifedi/data/models/assortment_response/assortment_response.dart';
import 'package:sosedifedi/data/services/assortment_service.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class AssortmentRepository {
  Future<DefaultResponse<List<Group>>> getProductGroups({
    String? assortmentFile,
    bool refresh,
  });

  Future<DefaultResponse<List<Product>>> getProducts({
    String? assortmentFile,
    bool refresh,
  });

  Future<DefaultResponse<Product>> getProduct({
    required String id,
    String? assortmentFile,
    bool refresh,
  });

  Future<DefaultResponse<Product?>> getProductByBarcode({
    required String barcode,
    String? assortmentFile,
    bool refresh,
  });

  Future<DefaultResponse<Group>> getGroup({
    required String id,
    String? assortmentFile,
    bool refresh,
  });

  Future<DefaultResponse<List<Product>>> searchProductByName({
    required String assortmentFile,
    required String query,
    bool refresh,
  });

  Future<DefaultResponse<Product?>> getProductBySKU({
    required int sku,
    String? assortmentFile,
    bool refresh,
  });

  void dispose() {}
}

///Если [assortmentFile] равен [null], то будет возвращаться [appEnvironment.defaultStore]
@Singleton(as: AssortmentRepository)
class ProductsRepositoryImpl extends AssortmentRepository {
  ProductsRepositoryImpl({
    required this.productService,
    required this.assortmentMapper,
    required this.appEnvironment,
  });

  @protected
  final AssortmentService productService;
  @protected
  final AssortmentMapper assortmentMapper;
  @protected
  final AppEnvironment appEnvironment;

  @override
  Future<DefaultResponse<List<Group>>> getProductGroups({
    bool refresh = false,
    String? assortmentFile,
  }) async {
    try {
      final response = await _getAssortment(assortmentFile, refresh);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        assortmentMapper.getCategoryList(
          assortment: response.result,
        ),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<Product>>> getProducts({
    String? assortmentFile,
    bool refresh = false,
  }) async {
    try {
      final response = await _getAssortment(assortmentFile, refresh);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        assortmentMapper.getProductsList(
          assortment: response.result,
        ),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Product>> getProduct({
    required String id,
    String? assortmentFile,
    bool refresh = false,
  }) async {
    try {
      final response = await _getAssortment(assortmentFile, refresh);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final product = assortmentMapper.getProduct(
        assortment: response.result,
        id: id,
      );
      if (product == null) {
        return const ApiResponse.error(
          CommonResponseError.undefinedError(null),
        );
      }
      return ApiResponse.success(product);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Product?>> getProductByBarcode({
    required String barcode,
    String? assortmentFile,
    bool refresh = false,
  }) async {
    try {
      final response = await _getAssortment(assortmentFile, refresh);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final product = assortmentMapper.getProductByBarcode(
        assortment: response.result,
        barcode: barcode,
      );
      return ApiResponse.success(product);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Product?>> getProductBySKU({
    required int sku,
    String? assortmentFile,
    bool refresh = false,
  }) async {
    try {
      final response = await _getAssortment(assortmentFile, refresh);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final product = assortmentMapper.getProductBySKU(
        assortment: response.result,
        sku: sku,
      );
      return ApiResponse.success(product);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Group>> getGroup({
    required String id,
    String? assortmentFile,
    bool refresh = false,
  }) async {
    try {
      final response = await _getAssortment(assortmentFile, refresh);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final group = assortmentMapper.getGroup(
        assortment: response.result,
        id: id,
      );
      if (group == null) {
        return const ApiResponse.error(
          CommonResponseError.undefinedError(null),
        );
      }
      return ApiResponse.success(group);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<Product>>> searchProductByName({
    required String assortmentFile,
    required String query,
    bool refresh = false,
  }) async {
    try {
      final response =
          await productService.getAssortment(assortmentFile, refresh: refresh);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final products = assortmentMapper.searchProductByName(
        assortment: response.result,
        query: query,
      );
      return ApiResponse.success(products);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<DefaultResponse<AssortmentResponse>> _getAssortment(
      String? assortmentFile,
      [bool refresh = true]) {
    final file = (assortmentFile == null ||
            assortmentFile.isEmpty ||
            assortmentFile == 'null')
        ? appEnvironment.defaultStore
        : assortmentFile;
    return productService.getAssortment(
      file,
      refresh: refresh,
    );
  }
}
