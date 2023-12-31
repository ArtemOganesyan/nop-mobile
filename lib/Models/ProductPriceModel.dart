/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.


import 'CustomProperties.dart';

class ProductPrice {
  ProductPrice({
    required this.oldPrice,
    required this.price,
    required this.priceValue,
    required this.basePricePAngV,
    required this.disableBuyButton,
    required this.disableWishlistButton,
    required this.disableAddToCompareListButton,
    required this.availableForPreOrder,
    required this.preOrderAvailabilityStartDateTimeUtc,
    required this.isRental,
    required this.forceRedirectionAfterAddingToCart,
    required this.displayTaxShippingInfo,
    required this.customProperties,
  });

  dynamic oldPrice;
  dynamic price;
  double priceValue;
  dynamic basePricePAngV;
  bool disableBuyButton;
  bool disableWishlistButton;
  bool disableAddToCompareListButton;
  bool availableForPreOrder;
  dynamic preOrderAvailabilityStartDateTimeUtc;
  bool isRental;
  bool forceRedirectionAfterAddingToCart;
  bool displayTaxShippingInfo;
  CustomProperties customProperties;

  factory ProductPrice.fromJson(Map<String, dynamic> json) => ProductPrice(
    oldPrice: json["OldPrice"],
    price: json["Price"],
    priceValue: json["PriceValue"]??0.0,
    basePricePAngV: json["BasePricePAngV"],
    disableBuyButton: json["DisableBuyButton"],
    disableWishlistButton: json["DisableWishlistButton"],
    disableAddToCompareListButton: json["DisableAddToCompareListButton"],
    availableForPreOrder: json["AvailableForPreOrder"],
    preOrderAvailabilityStartDateTimeUtc: json["PreOrderAvailabilityStartDateTimeUtc"],
    isRental: json["IsRental"],
    forceRedirectionAfterAddingToCart: json["ForceRedirectionAfterAddingToCart"],
    displayTaxShippingInfo: json["DisplayTaxShippingInfo"],
    customProperties: CustomProperties.fromJson(json["CustomProperties"]),
  );

  Map<String, dynamic> toJson() => {
    "OldPrice": oldPrice,
    "Price": price,
    "PriceValue": priceValue,
    "BasePricePAngV": basePricePAngV,
    "DisableBuyButton": disableBuyButton,
    "DisableWishlistButton": disableWishlistButton,
    "DisableAddToCompareListButton": disableAddToCompareListButton,
    "AvailableForPreOrder": availableForPreOrder,
    "PreOrderAvailabilityStartDateTimeUtc": preOrderAvailabilityStartDateTimeUtc,
    "IsRental": isRental,
    "ForceRedirectionAfterAddingToCart": forceRedirectionAfterAddingToCart,
    "DisplayTaxShippingInfo": displayTaxShippingInfo,
    "CustomProperties": customProperties.toJson(),
  };
}