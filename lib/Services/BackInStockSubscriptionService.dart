/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/cupertino.dart';
import 'package:nopsuite/DataProvider/APIConstants.dart';
import 'package:nopsuite/DataProvider/APIService.dart';

class BackInStockSubscriptionsService {
  APIService _apiService = new APIService();

  getCustomerSubscriptions({required BuildContext context}) async {
    return await _apiService.httpGet(context: context ,url: APIConstants.GET_CUSTOMER_SUBSCRIPTION_API, isWithoutToken: false);
  }

  setSubscriptions({required BuildContext context, required var body}) async {
    return await _apiService.httpPost(context: context ,url: APIConstants.ADD_SUBSCRIPTION_API,body: body);
  }

  removeProductSubscriptions({required BuildContext context, required var body}) async {
    return await _apiService.httpPost(context: context ,url: APIConstants.REMOVE_SUBSCRIPTION_API,body: body);
  }


}