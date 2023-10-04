/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:nopsuite/Screens/Customer/CustomerProductReview/CustomerProductReviewProvider.dart';
import 'package:nopsuite/Screens/General/LocalResourceProvider.dart';
import 'package:nopsuite/Themes/Flexo/Screen/Shared/AppBar/AppBar.dart';
import 'package:nopsuite/Themes/Flexo/Screen/Shared/BottomNavigation/BottomNavigationWidget.dart';
import 'package:nopsuite/Themes/Flexo/Utils/Colors.dart';
import 'package:nopsuite/Themes/Flexo/Utils/Values.dart';
import 'package:nopsuite/Themes/Flexo/Widgets/Loader.dart';
import 'package:nopsuite/Themes/Flexo/Widgets/TextWidget.dart';
import 'package:nopsuite/Utils/Enum/BottomNavigationIndexType.dart';
import 'package:provider/provider.dart';
import 'Component/CustomerProductReviewComponent.dart';

class FlexoCustomerProductReview extends StatelessWidget {
  const FlexoCustomerProductReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var customerProductReviewProvider = context.watch<CustomerProductReviewProvider>();
    var localResourceProvider = context.watch<LocalResourceProvider>();
    return Scaffold(
      appBar: FlexoAppBarWidget().appbar(context: context,backButton: true , title:  localResourceProvider.isLocalDataLoad ? "" : localResourceProvider.getResourseByKey("account.myAccount")+" - "+localResourceProvider.getResourseByKey("pageTitle.customerProductReviews")) ,
      backgroundColor: FlexoColorConstants.BACKGROUND_COLOR,
      bottomNavigationBar: FlexoBottomNavigationWidget().bottomNavigation(context: context, tabIndexType: BottomNavigationIndexType.Other,headerData: customerProductReviewProvider.headerModel,headerLoader:customerProductReviewProvider.isAPILoader),
      body: customerProductReviewProvider.isPageLoader ? Loaders.pageLoader() :  Column(
        children: [
          customerProductReviewProvider.isAPILoader ? Loaders.apiLoader() : Container(),
          customerProductReviewProvider.getCustomerProductReviewsModel.productReviews.isEmpty ?
          Container(
            padding: EdgeInsets.all(FlexoValues.widthSpace2Px),
            alignment: Alignment.centerLeft,
            child: FlexoTextWidget().headingText17(text: localResourceProvider.getResourseByKey("account.customerProductReviews.noRecords"))
          ):
          Expanded(
            child: Container(
              child: LazyLoadScrollView(
                isLoading: customerProductReviewProvider.isLazyLoader,
                onEndOfPage:(){
                  customerProductReviewProvider.loadMoreProducts(context: context);
                  },
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      Container(
                        width:FlexoValues.deviceWidth,
                        child: CustomerProductReviewComponent().getCustomerProductReviewComponent(context:context),
                      ),

                      customerProductReviewProvider.isLazyLoader? Loaders.lazyLoader():Container()

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
