/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.


import 'package:nopsuite/Models/CustomProperties.dart';
import 'package:nopsuite/Models/PictureBoxModel.dart';
import 'package:nopsuite/Models/ProductSpecificationModel.dart';
import 'dart:convert';

import 'GetHomepageBestSellersModel.dart';

List<GetHomepageProductsModel> getHomepageProductsModelFromJson(String str) => List<GetHomepageProductsModel>.from(json.decode(str).map((x) => GetHomepageProductsModel.fromJson(x)));

String getHomepageProductsModelToJson(List<GetHomepageProductsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetHomepageProductsModel {
  GetHomepageProductsModel({
    required this.name,
    required this.shortDescription,
    required this.fullDescription,
    required this.seName,
    required this.sku,
    required this.productType,
    required this.markAsNew,
    required this.productPrice,
    required this.defaultPictureModel,
    required this.productSpecificationModel,
    required this.reviewOverviewModel,
    required this.id,
    required this.customProperties,
  });

  String name;
  String shortDescription;
  String fullDescription;
  String seName;
  String sku;
  int productType;
  bool markAsNew;
  ProductPrice productPrice;
  PictureModel defaultPictureModel;
  ProductSpecificationModel productSpecificationModel;
  ReviewOverviewModel reviewOverviewModel;
  int id;
  CustomProperties customProperties;

  factory GetHomepageProductsModel.fromJson(Map<String, dynamic> json) => GetHomepageProductsModel(
    name: json["Name"],
    shortDescription: json["ShortDescription"],
    fullDescription: json["FullDescription"],
    seName: json["SeName"],
    sku: json["Sku"],
    productType: json["ProductType"],
    markAsNew: json["MarkAsNew"],
    productPrice: ProductPrice.fromJson(json["ProductPrice"]),
    defaultPictureModel: PictureModel.fromJson(json["DefaultPictureModel"]),
    productSpecificationModel: ProductSpecificationModel.fromJson(json["ProductSpecificationModel"]),
    reviewOverviewModel: ReviewOverviewModel.fromJson(json["ReviewOverviewModel"]),
    id: json["Id"],
    customProperties: CustomProperties.fromJson(json["CustomProperties"]),
  );

  Map<String, dynamic> toJson() => {
    "Name": name,
    "ShortDescription": shortDescription,
    "FullDescription": fullDescription,
    "SeName": seName,
    "Sku": sku,
    "ProductType": productType,
    "MarkAsNew": markAsNew,
    "ProductPrice": productPrice.toJson(),
    "DefaultPictureModel": defaultPictureModel.toJson(),
    "ProductSpecificationModel": productSpecificationModel.toJson(),
    "ReviewOverviewModel": reviewOverviewModel.toJson(),
    "Id": id,
    "CustomProperties": customProperties.toJson(),
  };
}
