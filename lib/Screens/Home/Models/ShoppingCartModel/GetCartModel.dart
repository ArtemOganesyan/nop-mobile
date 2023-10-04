/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:nopsuite/Models/AddressModel.dart';
import 'dart:convert';
import 'package:nopsuite/Models/AllowedQuantityModel.dart';
import 'package:nopsuite/Models/CheckoutAttribute.dart';
import 'package:nopsuite/Models/CustomProperties.dart';
import 'package:nopsuite/Models/DiscountBox.dart';
import 'package:nopsuite/Models/GiftCardBoxModel.dart';
import 'package:nopsuite/Models/PictureBoxModel.dart';

GetCartModel getCartModelFromJson(String str) => GetCartModel.fromJson(json.decode(str));

String getCartModelToJson(GetCartModel data) => json.encode(data.toJson());

class GetCartModel {
  GetCartModel({
    required this.onePageCheckoutEnabled,
    required this.showSku,
    required this.showProductImages,
    required this.isEditable,
    required this.items,
    required this.checkoutAttributes,
    required this.warnings,
    required this.minOrderSubtotalWarning,
    required this.displayTaxShippingInfo,
    required this.termsOfServiceOnShoppingCartPage,
    required this.termsOfServiceOnOrderConfirmPage,
    required this.termsOfServicePopup,
    required this.discountBox,
    required this.giftCardBox,
    required this.orderReviewData,
    this.buttonPaymentMethodViewComponentNames,
    required this.hideCheckoutButton,
    required this.showVendorName,
    required this.customProperties,
  });

  bool onePageCheckoutEnabled;
  bool showSku;
  bool showProductImages;
  bool isEditable;
  List<CartItem> items;
  List<CheckoutAttribute> checkoutAttributes;
  List<String> warnings;
  String? minOrderSubtotalWarning;
  bool displayTaxShippingInfo;
  bool termsOfServiceOnShoppingCartPage;
  bool termsOfServiceOnOrderConfirmPage;
  bool termsOfServicePopup;
  DiscountBox discountBox;
  GiftCardBox giftCardBox;
  OrderReviewData orderReviewData;
  List<String>? buttonPaymentMethodViewComponentNames;
  bool hideCheckoutButton;
  bool showVendorName;
  CustomProperties customProperties;

  factory GetCartModel.fromJson(Map<String, dynamic> json) => GetCartModel(
    onePageCheckoutEnabled: json["OnePageCheckoutEnabled"],
    showSku: json["ShowSku"],
    showProductImages: json["ShowProductImages"],
    isEditable: json["IsEditable"],
    items: List<CartItem>.from(json["Items"].map((x) => CartItem.fromJson(x))),
    checkoutAttributes: List<CheckoutAttribute>.from(json["CheckoutAttributes"].map((x) => CheckoutAttribute.fromJson(x))),
    warnings: List<String>.from(json["Warnings"].map((x) => x)),
    minOrderSubtotalWarning: json["MinOrderSubtotalWarning"] == null ? null : json["MinOrderSubtotalWarning"],
    displayTaxShippingInfo: json["DisplayTaxShippingInfo"],
    termsOfServiceOnShoppingCartPage: json["TermsOfServiceOnShoppingCartPage"],
    termsOfServiceOnOrderConfirmPage: json["TermsOfServiceOnOrderConfirmPage"],
    termsOfServicePopup: json["TermsOfServicePopup"],
    discountBox: DiscountBox.fromJson(json["DiscountBox"]),
    giftCardBox: GiftCardBox.fromJson(json["GiftCardBox"]),
    orderReviewData: OrderReviewData.fromJson(json["OrderReviewData"]),
    // buttonPaymentMethodViewComponentNames: List<String>.from(json["ButtonPaymentMethodViewComponents"].map((x) => x)),
    hideCheckoutButton: json["HideCheckoutButton"],
    showVendorName: json["ShowVendorName"],
    customProperties: CustomProperties.fromJson(json["CustomProperties"]),
  );

  Map<String, dynamic> toJson() => {
    "OnePageCheckoutEnabled": onePageCheckoutEnabled,
    "ShowSku": showSku,
    "ShowProductImages": showProductImages,
    "IsEditable": isEditable,
    "Items": List<dynamic>.from(items.map((x) => x.toJson())),
    "CheckoutAttributes": List<dynamic>.from(checkoutAttributes.map((x) => x.toJson())),
    "Warnings": List<dynamic>.from(warnings.map((x) => x)),
    "MinOrderSubtotalWarning": minOrderSubtotalWarning,
    "DisplayTaxShippingInfo": displayTaxShippingInfo,
    "TermsOfServiceOnShoppingCartPage": termsOfServiceOnShoppingCartPage,
    "TermsOfServiceOnOrderConfirmPage": termsOfServiceOnOrderConfirmPage,
    "TermsOfServicePopup": termsOfServicePopup,
    "DiscountBox": discountBox.toJson(),
    "GiftCardBox": giftCardBox.toJson(),
    "OrderReviewData": orderReviewData.toJson(),
    // "ButtonPaymentMethodViewComponentNames": List<dynamic>.from(buttonPaymentMethodViewComponentNames.map((x) => x)),
    "HideCheckoutButton": hideCheckoutButton,
    "ShowVendorName": showVendorName,
    "CustomProperties": customProperties.toJson(),
  };
}


class CartItem {
  CartItem({
    required this.sku,
    required this.vendorName,
    required this.picture,
    required this.productId,
    required this.productName,
    required this.productSeName,
    required this.unitPrice,
    required this.unitPriceValue,
    required this.subTotal,
    required this.subTotalValue,
    required this.discount,
    required this.discountValue,
    required this.maximumDiscountedQty,
    required this.quantity,
    required this.allowedQuantities,
    required this.attributeInfo,
    required this.recurringInfo,
    required this.rentalInfo,
    required this.allowItemEditing,
    required this.disableRemoval,
    required this.warnings,
    required this.id,
    required this.customProperties,
  });

  String sku;
  String? vendorName;
  PictureModel picture;
  int productId;
  String productName;
  String productSeName;
  String unitPrice;
  double unitPriceValue;
  String subTotal;
  double subTotalValue;
  String? discount;
  double discountValue;
  String? maximumDiscountedQty;
  int quantity;
  List<AllowedQuantity> allowedQuantities;
  String attributeInfo;
  String? recurringInfo;
  String? rentalInfo;
  bool allowItemEditing;
  bool disableRemoval;
  List<String> warnings;
  int id;
  CustomProperties customProperties;

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
    sku: json["Sku"],
    vendorName: json["VendorName"],
    picture: PictureModel.fromJson(json["Picture"]),
    productId: json["ProductId"],
    productName: json["ProductName"],
    productSeName: json["ProductSeName"],
    unitPrice: json["UnitPrice"],
    unitPriceValue: json["UnitPriceValue"],
    subTotal: json["SubTotal"],
    subTotalValue: json["SubTotalValue"],
    discount: json["Discount"],
    discountValue: json["DiscountValue"],
    maximumDiscountedQty: json["MaximumDiscountedQty"],
    quantity: json["Quantity"],
    allowedQuantities: List<AllowedQuantity>.from(json["AllowedQuantities"].map((x) => AllowedQuantity.fromJson(x))),
    attributeInfo: json["AttributeInfo"],
    recurringInfo: json["RecurringInfo"],
    rentalInfo: json["RentalInfo"],
    allowItemEditing: json["AllowItemEditing"],
    disableRemoval: json["DisableRemoval"],
    warnings: List<String>.from(json["Warnings"].map((x) => x)),
    id: json["Id"],
    customProperties: CustomProperties.fromJson(json["CustomProperties"]),
  );

  Map<String, dynamic> toJson() => {
    "Sku": sku,
    "VendorName": vendorName,
    "Picture": picture.toJson(),
    "ProductId": productId,
    "ProductName": productName,
    "ProductSeName": productSeName,
    "UnitPrice": unitPrice,
    "UnitPriceValue": unitPriceValue,
    "SubTotal": subTotal,
    "SubTotalValue": subTotalValue,
    "Discount": discount,
    "DiscountValue": discountValue,
    "MaximumDiscountedQty": maximumDiscountedQty,
    "Quantity": quantity,
    "AllowedQuantities": List<dynamic>.from(allowedQuantities.map((x) => x.toJson())),
    "AttributeInfo": attributeInfo,
    "RecurringInfo": recurringInfo,
    "RentalInfo": rentalInfo,
    "AllowItemEditing": allowItemEditing,
    "DisableRemoval": disableRemoval,
    "Warnings": List<dynamic>.from(warnings.map((x) => x)),
    "Id": id,
    "CustomProperties": customProperties.toJson(),
  };
}

// class CartItem {
//   CartItem({
//     required this.sku,
//     required this.vendorName,
//     required this.picture,
//     required this.productId,
//     required this.productName,
//     required this.productSeName,
//     required this.unitPrice,
//     required this.subTotal,
//     required this.discount,
//     required this.maximumDiscountedQty,
//     required this.quantity,
//     required this.allowedQuantities,
//     required this.attributeInfo,
//     required this.recurringInfo,
//     required this.rentalInfo,
//     required this.allowItemEditing,
//     required this.disableRemoval,
//     required this.warnings,
//     required this.id,
//     required this.customProperties,
//   });
//
//   String sku;
//   String vendorName;
//   PictureModel picture;
//   int productId;
//   String productName;
//   String productSeName;
//   String unitPrice;
//   String subTotal;
//   dynamic discount;
//   int maximumDiscountedQty;
//   int quantity;
//   List<AllowedQuantity> allowedQuantities;
//   String attributeInfo;
//   String recurringInfo;
//   String rentalInfo;
//   bool allowItemEditing;
//   bool disableRemoval;
//   List<String> warnings;
//   int id;
//   CustomProperties customProperties;
//
//   factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
//     sku: json["Sku"],
//     vendorName: json["VendorName"] == null ? null : json["VendorName"],
//     picture: PictureModel.fromJson(json["Picture"]),
//     productId: json["ProductId"],
//     productName: json["ProductName"],
//     productSeName: json["ProductSeName"],
//     unitPrice: json["UnitPrice"],
//     subTotal: json["SubTotal"],
//     discount: json["Discount"],
//     maximumDiscountedQty: json["MaximumDiscountedQty"],
//     quantity: json["Quantity"],
//     allowedQuantities: List<AllowedQuantity>.from(json["AllowedQuantities"].map((x) => AllowedQuantity.fromJson(x))),
//     attributeInfo: json["AttributeInfo"],
//     recurringInfo: json["RecurringInfo"],
//     rentalInfo: json["RentalInfo"],
//     allowItemEditing: json["AllowItemEditing"],
//     disableRemoval: json["DisableRemoval"],
//     warnings: List<String>.from(json["Warnings"].map((x) => x)),
//     id: json["Id"],
//     customProperties: CustomProperties.fromJson(json["CustomProperties"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "Sku": sku,
//     "VendorName": vendorName == null ? null : vendorName,
//     "Picture": picture.toJson(),
//     "ProductId": productId,
//     "ProductName": productName,
//     "ProductSeName": productSeName,
//     "UnitPrice": unitPrice,
//     "SubTotal": subTotal,
//     "Discount": discount,
//     "MaximumDiscountedQty": maximumDiscountedQty,
//     "Quantity": quantity,
//     "AllowedQuantities": List<dynamic>.from(allowedQuantities.map((x) => x.toJson())),
//     "AttributeInfo": attributeInfo,
//     "RecurringInfo": recurringInfo,
//     "RentalInfo": rentalInfo,
//     "AllowItemEditing": allowItemEditing,
//     "DisableRemoval": disableRemoval,
//     "Warnings": List<dynamic>.from(warnings.map((x) => x)),
//     "Id": id,
//     "CustomProperties": customProperties.toJson(),
//   };
// }

class OrderReviewData {
  OrderReviewData({
    required this.display,
    required this.billingAddress,
    required this.isShippable,
    required this.shippingAddress,
    required this.selectedPickupInStore,
    required this.pickupAddress,
    required this.shippingMethod,
    required this.paymentMethod,
    required this.customValues,
    required this.customProperties,
  });

  bool display;
  AddressModel billingAddress;
  bool isShippable;
  AddressModel shippingAddress;
  bool selectedPickupInStore;
  AddressModel pickupAddress;
  String? shippingMethod;
  String? paymentMethod;
  CustomProperties customValues;
  CustomProperties customProperties;

  factory OrderReviewData.fromJson(Map<String, dynamic> json) => OrderReviewData(
    display: json["Display"],
    billingAddress: AddressModel.fromJson(json["BillingAddress"]),
    isShippable: json["IsShippable"],
    shippingAddress: AddressModel.fromJson(json["ShippingAddress"]),
    selectedPickupInStore: json["SelectedPickupInStore"],
    pickupAddress: AddressModel.fromJson(json["PickupAddress"]),
    shippingMethod: json["ShippingMethod"],
    paymentMethod: json["PaymentMethod"],
    customValues: CustomProperties.fromJson(json["CustomValues"]),
    customProperties: CustomProperties.fromJson(json["CustomProperties"]),
  );

  Map<String, dynamic> toJson() => {
    "Display": display,
    "BillingAddress": billingAddress.toJson(),
    "IsShippable": isShippable,
    "ShippingAddress": shippingAddress.toJson(),
    "SelectedPickupInStore": selectedPickupInStore,
    "PickupAddress": pickupAddress.toJson(),
    "ShippingMethod": shippingMethod,
    "PaymentMethod": paymentMethod,
    "CustomValues": customValues.toJson(),
    "CustomProperties": customProperties.toJson(),
  };
}