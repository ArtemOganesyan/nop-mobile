/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:nopsuite/Common/CheckInternet.dart';
import 'package:nopsuite/Screens/General/LocalResourceProvider.dart';
import 'package:nopsuite/Screens/Products/CompareProduct/CompareProductProvider.dart';
import 'package:nopsuite/Themes/Flexo/Screen/Product/CompareProduct/CompareProduct.dart';
import 'package:nopsuite/Themes/Flexo/Widgets/Loader.dart';
import 'package:nopsuite/Utils/Enum/ThemeAttributes.dart';
import 'package:provider/provider.dart';

class CompareProduct extends StatefulWidget {
  const CompareProduct({Key? key}) : super(key: key);

  @override
  State<CompareProduct> createState() => _CompareProductState();
}

class _CompareProductState extends State<CompareProduct> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData() async
  {
    context.read<LocalResourceProvider>().loadLocalResources();
    if(await CheckConnectivity().checkInternet(context))
    {
      context.read<CompareProductProvider>().pageLoadData(context: context);
    }
  }

  @override
  Widget build(BuildContext context) {

    if(selectedTheme == ThemeAttributes.Flexo)
    {
      return FlexoCompareProduct();
    }else{
      return FlexoCompareProduct();
    }
  }
}
