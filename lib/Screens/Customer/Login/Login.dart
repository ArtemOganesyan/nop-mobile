/// This is a free for use and open source, most complete mobile application for nopCommerce platform based on Flutter and NopSuite front-end API for nopCommerce by NopAdvance LLP.
/// Copyright (C) 2022 - NopAdvance LLP

/// This program is free software: you can redistribute and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License.

/// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

/// This program is forever free software: you can modify and/or redistribute. One cannot sell or relicense the source code it under the terms of the NopAdvance Public license terms.

/// You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:nopsuite/Screens/General/AppSettings/AppSettingsProvider.dart';
import 'package:nopsuite/Utils/Enum/LoginTypeAttribute.dart';
import 'package:nopsuite/Utils/Enum/ThemeAttributes.dart';
import 'package:nopsuite/Themes/Flexo/Widgets/Loader.dart';
import 'package:nopsuite/Screens/General/LocalResourceProvider.dart';
import 'package:nopsuite/Themes/Flexo/Screen/Customer/Login/Login.dart';
import 'package:provider/provider.dart';
import 'LoginProvider.dart';

class Login extends StatefulWidget {
  final int loginType;
  Login({required this.loginType});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  void initState() {
    super.initState();

    loadData();
  }

  loadData()
  {
    context.read<LocalResourceProvider>().loadLocalResources();
    context.read<LoginProvider>().pageLoad(context: context,loginType: widget.loginType);

  }

  @override
  Widget build(BuildContext context) {

    if(selectedTheme == ThemeAttributes.Flexo)
    {
      return FlexoLogin();
    }else{
      return FlexoLogin();
    }
  }
}
