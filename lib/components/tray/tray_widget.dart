import '/components/option/option_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tray_model.dart';
export 'tray_model.dart';

class TrayWidget extends StatefulWidget {
  const TrayWidget({Key? key}) : super(key: key);

  @override
  _TrayWidgetState createState() => _TrayWidgetState();
}

class _TrayWidgetState extends State<TrayWidget> with TickerProviderStateMixin {
  late TrayModel _model;

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 2.ms,
          duration: 900.ms,
          begin: Offset(0.0, 160.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 2.ms,
          duration: 700.ms,
          begin: Offset(0.0, 110.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 2.ms,
          duration: 600.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrayModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(1.00, 0.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'SearchImage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 200),
                    ),
                  },
                );

                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '835sccoa' /* Ask Copilot */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 48.0,
                    fillColor: FlutterFlowTheme.of(context).accent1,
                    icon: Icon(
                      Icons.cookie_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 28.0,
                    ),
                    onPressed: () {
                      print('createRecipe pressed ...');
                    },
                  ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'CreateRecipe',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 200),
                    ),
                  },
                );

                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'n13pgude' /* Create Recipe */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 48.0,
                    fillColor: FlutterFlowTheme.of(context).accent1,
                    icon: FaIcon(
                      FontAwesomeIcons.iceCream,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 28.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'CreateRecipe',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 200),
                          ),
                        },
                      );

                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Color(0x9A000000),
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: OptionWidget(),
                    );
                  },
                ).then((value) => safeSetState(() {}));

                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'yugna71g' /* Add Product */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 48.0,
                    fillColor: FlutterFlowTheme.of(context).accent1,
                    icon: FaIcon(
                      FontAwesomeIcons.plus,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 28.0,
                    ),
                    onPressed: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Color(0x9A000000),
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: OptionWidget(),
                          );
                        },
                      ).then((value) => safeSetState(() {}));

                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation3']!),
          ]
              .divide(SizedBox(height: 20.0))
              .addToStart(SizedBox(height: 20.0))
              .addToEnd(SizedBox(height: 100.0)),
        ),
      ),
    );
  }
}
