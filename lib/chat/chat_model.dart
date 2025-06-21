import '/components/message_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MessageItem component.
  late MessageItemModel messageItemModel1;
  // Model for MessageItem component.
  late MessageItemModel messageItemModel2;
  // Model for MessageItem component.
  late MessageItemModel messageItemModel3;

  @override
  void initState(BuildContext context) {
    messageItemModel1 = createModel(context, () => MessageItemModel());
    messageItemModel2 = createModel(context, () => MessageItemModel());
    messageItemModel3 = createModel(context, () => MessageItemModel());
  }

  @override
  void dispose() {
    messageItemModel1.dispose();
    messageItemModel2.dispose();
    messageItemModel3.dispose();
  }
}
