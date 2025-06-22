import '/backend/backend.dart';
import '/components/detail_popup_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'construction_permits_page_widget.dart'
    show ConstructionPermitsPageWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConstructionPermitsPageModel
    extends FlutterFlowModel<ConstructionPermitsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  Completer<List<CasesRecord>>? firestoreRequestCompleter;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
