/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/cupertino.dart';
import 'package:nopsuite/Screens/Customer/DownloadableProduct/Models/GetDownloadableProductDetailsModel.dart';
import 'package:nopsuite/DataProvider/APIConstants.dart';
import 'package:nopsuite/DataProvider/APIService.dart';


class DownloadableProductService {
  APIService _apiService = new APIService();

  getDownloadableProduct({required BuildContext context,}) async {
    return await _apiService.httpGet(context: context ,url: APIConstants.GET_DOWNLOADABLE_PRODUCT_API , isWithoutToken: false);
  }

  getDownloadableProductDetails({required BuildContext context,required String  param,required String  param1}) async {
    return await _apiService.httpGet(context: context ,url: APIConstants.GET_DOWNLOADABLE_PRODUCT_DETAILS_API +param+param1, isWithoutToken: false);
  }

  getOrderItemLicense({required BuildContext context,required String  param}) async {
    return await _apiService.httpGet(context: context ,url: APIConstants.GET_ORDER_ITEM_LICENSE_API +param, isWithoutToken: false);
  }

  getSampleProductProduct({required BuildContext context,required String  param}) async {
    return await _apiService.httpGet(context: context ,url: APIConstants.GET_SAMPLE_PRODUCT_DETAILS_API +param, isWithoutToken: false);
  }

  getOrderNoteDownload({required BuildContext context,required String  param}) async {
    return await _apiService.httpGet(context: context ,url: APIConstants.GET_ORDER_NOTE_FILE_API +param, isWithoutToken: false);
  }

}


