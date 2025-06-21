import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_item_model.dart';
export 'menu_item_model.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({
    super.key,
    bool? isActivePage,
    required this.text,
    Color? tagColor,
    bool? hasSubMenu,
    bool? subMenuExpanded,
  })  : this.isActivePage = isActivePage ?? false,
        this.tagColor = tagColor ?? const Color(0xFF6C94E5),
        this.hasSubMenu = hasSubMenu ?? false,
        this.subMenuExpanded = subMenuExpanded ?? false;

  final bool isActivePage;
  final String? text;
  final Color tagColor;
  final bool hasSubMenu;
  final bool subMenuExpanded;

  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  late MenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (widget!.isActivePage) {
                return FlutterFlowTheme.of(context).brand100;
              } else if (!widget!.isActivePage && _model.mouseRegionHovered!) {
                return FlutterFlowTheme.of(context).neutral100;
              } else {
                return Color(0x00FFFFFF);
              }
            }(),
            Color(0x00FFFFFF),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
            child: Text(
              widget!.text!,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                    ),
                    color: valueOrDefault<Color>(
                      widget!.isActivePage
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                  ),
            ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
