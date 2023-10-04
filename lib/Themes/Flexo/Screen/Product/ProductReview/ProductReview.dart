/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:nopsuite/Screens/General/LocalResourceProvider.dart';
import 'package:nopsuite/Screens/Products/ProductReview/ProductReviewProvider.dart';
import 'package:nopsuite/Themes/Flexo/Screen/Shared/AppBar/AppBar.dart';
import 'package:nopsuite/Themes/Flexo/Screen/Shared/BottomNavigation/BottomNavigationWidget.dart';
import 'package:nopsuite/Themes/Flexo/Utils/Colors.dart';
import 'package:nopsuite/Themes/Flexo/Utils/Values.dart';
import 'package:nopsuite/Themes/Flexo/Widgets/Loader.dart';
import 'package:nopsuite/Themes/Flexo/Widgets/TextWidget.dart';
import 'package:nopsuite/Utils/Enum/BottomNavigationIndexType.dart';
import 'package:provider/provider.dart';
import 'Components/ProductReviewAddComponent.dart';
import 'Components/ProductReviewListComponent.dart';

class FlexoProductReview extends StatelessWidget {
  const FlexoProductReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localResourceProvider = context.watch<LocalResourceProvider>();
    var productReviewProvider = context.watch<ProductReviewProvider>();

    return Scaffold(
      appBar: FlexoAppBarWidget().appbar(context: context,title: localResourceProvider.isLocalDataLoad || productReviewProvider.isPageLoader ? "" : localResourceProvider.getResourseByKey("account.customerProductReviews.productReviewFor")+" "+ productReviewProvider.getProductReviewsModel.productName, backButton: true),
      backgroundColor: FlexoColorConstants.BACKGROUND_COLOR,
      bottomNavigationBar: FlexoBottomNavigationWidget().bottomNavigation(context: context, tabIndexType: BottomNavigationIndexType.Other,headerData: productReviewProvider.headerModel,headerLoader: productReviewProvider.isPageLoader),
      body: productReviewProvider.isPageLoader || localResourceProvider.isLocalDataLoad ? Loaders.pageLoader() :  Column(
        children: [

          productReviewProvider.isAPILoader ? Loaders.apiLoader() : Container(),

          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    productReviewProvider.getProductReviewsModel.addProductReview.canAddNewReview?
                    ProductReviewAddComponent().getProductReviewAddComponent(context: context):
                    Container(
                      width: FlexoValues.deviceWidth,
                      margin: EdgeInsets.symmetric(vertical: FlexoValues.widthSpace2Px),
                      padding: EdgeInsets.symmetric(horizontal: FlexoValues.widthSpace2Px),
                      child: FlexoTextWidget().headingText15(text: localResourceProvider.getResourseByKey("reviews.alreadyAddedProductReviews"),),
                    ),

                    ProductReviewListComponent().getProductReviewListComponent(context: context),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
