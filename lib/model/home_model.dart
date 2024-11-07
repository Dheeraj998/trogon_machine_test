import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_model.freezed.dart';
part 'home_model.g.dart';

List<HomeModel> homeModelFromJson(String str) =>
    List<HomeModel>.from(json.decode(str).map((x) => HomeModel.fromJson(x)));

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    @JsonKey(name: 'product_id') num? productId,
    String? name,
    String? description,
    double? price,
    String? unit,
    String? image,
    int? discount,
    bool? availability,
    String? brand,
    String? category,
    double? rating,
    List<ReviewsModel>? reviews,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
class ReviewsModel with _$ReviewsModel {
  const factory ReviewsModel(
      {@JsonKey(name: 'user_id') num? userId,
      num? rating,
      String? comment}) = _ReviewsModel;

  factory ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsModelFromJson(json);
}
