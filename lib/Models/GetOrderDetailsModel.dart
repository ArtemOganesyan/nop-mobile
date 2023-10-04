/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.


import 'package:nopsuite/Models/AddressModel.dart';
import 'package:nopsuite/Models/CustomProperties.dart';
import 'dart:convert';

import 'CustomPropertiesValues.dart';
import 'GiftCardModel.dart';
import 'OrderDetailsItemModel.dart';
import 'OrderNote.dart';
import 'ShipmentModel.dart';
import 'TaxRateModel.dart';

GetOrderDetailsModel getOrderDetailsModelFromJson(String str) => GetOrderDetailsModel.fromJson(json.decode(str));

String getOrderDetailsModelToJson(GetOrderDetailsModel data) => json.encode(data.toJson());

class GetOrderDetailsModel {
  GetOrderDetailsModel({
    required this.printMode,
    required this.pdfInvoiceDisabled,
    required this.customOrderNumber,
    required this.createdOn,
    required this.orderStatus,
    required this.isReOrderAllowed,
    required this.isReturnRequestAllowed,
    required this.isShippable,
    required this.pickupInStore,
    required this.pickupAddress,
    required this.shippingStatus,
    required this.shippingAddress,
    required this.shippingMethod,
    required this.shipments,
    required this.billingAddress,
    required this.vatNumber,
    required this.paymentMethod,
    required this.paymentMethodStatus,
    required this.canRePostProcessPayment,
    required this.customValues,
    required this.orderSubtotal,
    required this.orderSubTotalDiscount,
    required this.orderShipping,
    required this.paymentMethodAdditionalFee,
    required this.checkoutAttributeInfo,
    required this.pricesIncludeTax,
    required this.displayTaxShippingInfo,
    required this.tax,
    required this.taxRates,
    required this.displayTax,
    required this.displayTaxRates,
    required this.orderTotalDiscount,
    required this.redeemedRewardPoints,
    required this.redeemedRewardPointsAmount,
    required this.orderTotal,
    required this.giftCards,
    required this.showSku,
    required this.items,
    required this.orderNotes,
    required this.showVendorName,
    required this.id,
    required this.customProperties,
  });

  bool printMode;
  bool pdfInvoiceDisabled;
  String customOrderNumber;
  DateTime createdOn;
  String orderStatus;
  bool isReOrderAllowed;
  bool isReturnRequestAllowed;
  bool isShippable;
  bool pickupInStore;
  AddressModel pickupAddress;
  String shippingStatus;
  AddressModel shippingAddress;
  String shippingMethod;
  List<Shipment> shipments;
  AddressModel billingAddress;
  dynamic vatNumber;
  String paymentMethod;
  String paymentMethodStatus;
  bool canRePostProcessPayment;
  CustomPropertiesValues customValues;
  String orderSubtotal;
  dynamic orderSubTotalDiscount;
  String orderShipping;
  dynamic paymentMethodAdditionalFee;
  String checkoutAttributeInfo;
  bool pricesIncludeTax;
  bool displayTaxShippingInfo;
  String tax;
  List<TaxRate> taxRates;
  bool displayTax;
  bool displayTaxRates;
  dynamic orderTotalDiscount;
  int redeemedRewardPoints;
  dynamic redeemedRewardPointsAmount;
  String orderTotal;
  List<GiftCard> giftCards;
  bool showSku;
  List<OrderDetailsItem> items;
  List<OrderNote> orderNotes;
  bool showVendorName;
  int id;
  CustomProperties customProperties;

  factory GetOrderDetailsModel.fromJson(Map<String, dynamic> json) => GetOrderDetailsModel(
    printMode: json["PrintMode"],
    pdfInvoiceDisabled: json["PdfInvoiceDisabled"],
    customOrderNumber: json["CustomOrderNumber"],
    createdOn: DateTime.parse(json["CreatedOn"]),
    orderStatus: json["OrderStatus"],
    isReOrderAllowed: json["IsReOrderAllowed"],
    isReturnRequestAllowed: json["IsReturnRequestAllowed"],
    isShippable: json["IsShippable"],
    pickupInStore: json["PickupInStore"],
    pickupAddress: AddressModel.fromJson(json["PickupAddress"]),
    shippingStatus: json["ShippingStatus"],
    shippingAddress: AddressModel.fromJson(json["ShippingAddress"]),
    shippingMethod: json["ShippingMethod"],
    shipments: List<Shipment>.from(json["Shipments"].map((x) => Shipment.fromJson(x))),
    billingAddress: AddressModel.fromJson(json["BillingAddress"]),
    vatNumber: json["VatNumber"],
    paymentMethod: json["PaymentMethod"],
    paymentMethodStatus: json["PaymentMethodStatus"],
    canRePostProcessPayment: json["CanRePostProcessPayment"],
    customValues: CustomPropertiesValues.fromJson(json["CustomValues"]),
    orderSubtotal: json["OrderSubtotal"],
    orderSubTotalDiscount: json["OrderSubTotalDiscount"],
    orderShipping: json["OrderShipping"],
    paymentMethodAdditionalFee: json["PaymentMethodAdditionalFee"],
    checkoutAttributeInfo: json["CheckoutAttributeInfo"],
    pricesIncludeTax: json["PricesIncludeTax"],
    displayTaxShippingInfo: json["DisplayTaxShippingInfo"],
    tax: json["Tax"],
    taxRates: List<TaxRate>.from(json["TaxRates"].map((x) => TaxRate.fromJson(x))),
    displayTax: json["DisplayTax"],
    displayTaxRates: json["DisplayTaxRates"],
    orderTotalDiscount: json["OrderTotalDiscount"],
    redeemedRewardPoints: json["RedeemedRewardPoints"],
    redeemedRewardPointsAmount: json["RedeemedRewardPointsAmount"],
    orderTotal: json["OrderTotal"],
    giftCards: List<GiftCard>.from(json["GiftCards"].map((x) => GiftCard.fromJson(x))),
    showSku: json["ShowSku"],
    items: List<OrderDetailsItem>.from(json["Items"].map((x) => OrderDetailsItem.fromJson(x))),
    orderNotes: List<OrderNote>.from(json["OrderNotes"].map((x) => OrderNote.fromJson(x))),
    showVendorName: json["ShowVendorName"],
    id: json["Id"],
    customProperties: CustomProperties.fromJson(json["CustomProperties"]),
  );

  Map<String, dynamic> toJson() => {
    "PrintMode": printMode,
    "PdfInvoiceDisabled": pdfInvoiceDisabled,
    "CustomOrderNumber": customOrderNumber,
    "CreatedOn": createdOn.toIso8601String(),
    "OrderStatus": orderStatus,
    "IsReOrderAllowed": isReOrderAllowed,
    "IsReturnRequestAllowed": isReturnRequestAllowed,
    "IsShippable": isShippable,
    "PickupInStore": pickupInStore,
    "PickupAddress": pickupAddress.toJson(),
    "ShippingStatus": shippingStatus,
    "ShippingAddress": shippingAddress.toJson(),
    "ShippingMethod": shippingMethod,
    "Shipments": List<dynamic>.from(shipments.map((x) => x.toJson())),
    "BillingAddress": billingAddress.toJson(),
    "VatNumber": vatNumber,
    "PaymentMethod": paymentMethod,
    "PaymentMethodStatus": paymentMethodStatus,
    "CanRePostProcessPayment": canRePostProcessPayment,
    "CustomValues": customValues.toJson(),
    "OrderSubtotal": orderSubtotal,
    "OrderSubTotalDiscount": orderSubTotalDiscount,
    "OrderShipping": orderShipping,
    "PaymentMethodAdditionalFee": paymentMethodAdditionalFee,
    "CheckoutAttributeInfo": checkoutAttributeInfo,
    "PricesIncludeTax": pricesIncludeTax,
    "DisplayTaxShippingInfo": displayTaxShippingInfo,
    "Tax": tax,
    "TaxRates": List<dynamic>.from(taxRates.map((x) => x.toJson())),
    "DisplayTax": displayTax,
    "DisplayTaxRates": displayTaxRates,
    "OrderTotalDiscount": orderTotalDiscount,
    "RedeemedRewardPoints": redeemedRewardPoints,
    "RedeemedRewardPointsAmount": redeemedRewardPointsAmount,
    "OrderTotal": orderTotal,
    "GiftCards": List<dynamic>.from(giftCards.map((x) => x.toJson())),
    "ShowSku": showSku,
    "Items": List<dynamic>.from(items.map((x) => x.toJson())),
    "OrderNotes": List<dynamic>.from(orderNotes.map((x) => x)),
    "ShowVendorName": showVendorName,
    "Id": id,
    "CustomProperties": customProperties.toJson(),
  };
}
