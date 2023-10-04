/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:nopsuite/Models/CustomProperties.dart';
import 'dart:convert';

import 'package:nopsuite/Models/TaxRateModel.dart';

SelectShippingOptionModel selectShippingOptionModelFromJson(String str) => SelectShippingOptionModel.fromJson(json.decode(str));

String selectShippingOptionModelToJson(SelectShippingOptionModel data) => json.encode(data.toJson());

class SelectShippingOptionModel {
  SelectShippingOptionModel({
    required this.isEditable,
    required this.subTotal,
    required this.subTotalDiscount,
    required this.shipping,
    required this.requiresShipping,
    required this.selectedShippingMethod,
    required this.hideShippingTotal,
    required this.paymentMethodAdditionalFee,
    required this.tax,
    required this.taxRates,
    required this.displayTax,
    required this.displayTaxRates,
    required this.giftCards,
    required this.orderTotalDiscount,
    required this.redeemedRewardPoints,
    required this.redeemedRewardPointsAmount,
    required this.willEarnRewardPoints,
    required this.orderTotal,
    required this.customProperties,
  });

  bool isEditable;
  String subTotal;
  String subTotalDiscount;
  String shipping;
  bool requiresShipping;
  String selectedShippingMethod;
  bool hideShippingTotal;
  dynamic paymentMethodAdditionalFee;
  String tax;
  List<TaxRate> taxRates;
  bool displayTax;
  bool displayTaxRates;
  List<dynamic> giftCards;
  String orderTotalDiscount;
  int redeemedRewardPoints;
  dynamic redeemedRewardPointsAmount;
  int willEarnRewardPoints;
  String orderTotal;
  CustomProperties customProperties;

  factory SelectShippingOptionModel.fromJson(Map<String, dynamic> json) => SelectShippingOptionModel(
    isEditable: json["IsEditable"],
    subTotal: json["SubTotal"],
    subTotalDiscount: json["SubTotalDiscount"],
    shipping: json["Shipping"],
    requiresShipping: json["RequiresShipping"],
    selectedShippingMethod: json["SelectedShippingMethod"],
    hideShippingTotal: json["HideShippingTotal"],
    paymentMethodAdditionalFee: json["PaymentMethodAdditionalFee"],
    tax: json["Tax"],
    taxRates: List<TaxRate>.from(json["TaxRates"].map((x) => TaxRate.fromJson(x))),
    displayTax: json["DisplayTax"],
    displayTaxRates: json["DisplayTaxRates"],
    giftCards: List<dynamic>.from(json["GiftCards"].map((x) => x)),
    orderTotalDiscount: json["OrderTotalDiscount"],
    redeemedRewardPoints: json["RedeemedRewardPoints"],
    redeemedRewardPointsAmount: json["RedeemedRewardPointsAmount"],
    willEarnRewardPoints: json["WillEarnRewardPoints"],
    orderTotal: json["OrderTotal"],
    customProperties: CustomProperties.fromJson(json["CustomProperties"]),
  );

  Map<String, dynamic> toJson() => {
    "IsEditable": isEditable,
    "SubTotal": subTotal,
    "SubTotalDiscount": subTotalDiscount,
    "Shipping": shipping,
    "RequiresShipping": requiresShipping,
    "SelectedShippingMethod": selectedShippingMethod,
    "HideShippingTotal": hideShippingTotal,
    "PaymentMethodAdditionalFee": paymentMethodAdditionalFee,
    "Tax": tax,
    "TaxRates": List<dynamic>.from(taxRates.map((x) => x.toJson())),
    "DisplayTax": displayTax,
    "DisplayTaxRates": displayTaxRates,
    "GiftCards": List<dynamic>.from(giftCards.map((x) => x)),
    "OrderTotalDiscount": orderTotalDiscount,
    "RedeemedRewardPoints": redeemedRewardPoints,
    "RedeemedRewardPointsAmount": redeemedRewardPointsAmount,
    "WillEarnRewardPoints": willEarnRewardPoints,
    "OrderTotal": orderTotal,
    "CustomProperties": customProperties.toJson(),
  };
}