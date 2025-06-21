import '/components/menu_item/menu_item_widget.dart';
import '/components/sub_menu_item/sub_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  Local state fields for this component.

  bool subMenuFolder = false;

  bool showUpgrade = true;

  bool subConstructionPermits = false;

  bool subConstructionCertificates = false;

  bool subLegalizationBuildings = false;

  bool subPublicConstruction = false;

  bool subCadastralSurveyandLandRegistration = false;

  ///  State fields for stateful widgets in this component.

  // Model for MenuItem component.
  late MenuItemModel menuItemModel1;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel2;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel1;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel2;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel3;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel3;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel4;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel5;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel6;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel4;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel7;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel8;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel5;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel9;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel10;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel11;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel12;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel13;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel6;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel14;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel15;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel16;

  @override
  void initState(BuildContext context) {
    menuItemModel1 = createModel(context, () => MenuItemModel());
    menuItemModel2 = createModel(context, () => MenuItemModel());
    subMenuItemModel1 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel2 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel3 = createModel(context, () => SubMenuItemModel());
    menuItemModel3 = createModel(context, () => MenuItemModel());
    subMenuItemModel4 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel5 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel6 = createModel(context, () => SubMenuItemModel());
    menuItemModel4 = createModel(context, () => MenuItemModel());
    subMenuItemModel7 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel8 = createModel(context, () => SubMenuItemModel());
    menuItemModel5 = createModel(context, () => MenuItemModel());
    subMenuItemModel9 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel10 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel11 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel12 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel13 = createModel(context, () => SubMenuItemModel());
    menuItemModel6 = createModel(context, () => MenuItemModel());
    subMenuItemModel14 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel15 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel16 = createModel(context, () => SubMenuItemModel());
  }

  @override
  void dispose() {
    menuItemModel1.dispose();
    menuItemModel2.dispose();
    subMenuItemModel1.dispose();
    subMenuItemModel2.dispose();
    subMenuItemModel3.dispose();
    menuItemModel3.dispose();
    subMenuItemModel4.dispose();
    subMenuItemModel5.dispose();
    subMenuItemModel6.dispose();
    menuItemModel4.dispose();
    subMenuItemModel7.dispose();
    subMenuItemModel8.dispose();
    menuItemModel5.dispose();
    subMenuItemModel9.dispose();
    subMenuItemModel10.dispose();
    subMenuItemModel11.dispose();
    subMenuItemModel12.dispose();
    subMenuItemModel13.dispose();
    menuItemModel6.dispose();
    subMenuItemModel14.dispose();
    subMenuItemModel15.dispose();
    subMenuItemModel16.dispose();
  }
}
