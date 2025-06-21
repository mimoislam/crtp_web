import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/property_card/property_card_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'my_profile_widget.dart' show MyProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyProfileModel extends FlutterFlowModel<MyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  bool isDataUploading_uploadDataUhi = false;
  FFUploadedFile uploadedLocalFile_uploadDataUhi =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel1;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel2;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel3;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    propertyCardModel1 = createModel(context, () => PropertyCardModel());
    propertyCardModel2 = createModel(context, () => PropertyCardModel());
    propertyCardModel3 = createModel(context, () => PropertyCardModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    propertyCardModel1.dispose();
    propertyCardModel2.dispose();
    propertyCardModel3.dispose();
  }
}
