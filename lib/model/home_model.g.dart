// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      productId: json['product_id'] as num?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
      image: json['image'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      availability: json['availability'] as bool?,
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'unit': instance.unit,
      'image': instance.image,
      'discount': instance.discount,
      'availability': instance.availability,
      'brand': instance.brand,
      'category': instance.category,
      'rating': instance.rating,
      'reviews': instance.reviews,
    };

_$ReviewsModelImpl _$$ReviewsModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewsModelImpl(
      userId: json['user_id'] as num?,
      rating: json['rating'] as num?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$ReviewsModelImplToJson(_$ReviewsModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'rating': instance.rating,
      'comment': instance.comment,
    };
