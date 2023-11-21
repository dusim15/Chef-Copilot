import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'talk_to_a_i_model.dart';
export 'talk_to_a_i_model.dart';

class TalkToAIWidget extends StatefulWidget {
  const TalkToAIWidget({
    Key? key,
    this.backgroundImage,
  }) : super(key: key);

  final String? backgroundImage;

  @override
  _TalkToAIWidgetState createState() => _TalkToAIWidgetState();
}

class _TalkToAIWidgetState extends State<TalkToAIWidget>
    with TickerProviderStateMixin {
  late TalkToAIModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'lottieAnimationOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TalkToAIModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'TalkToAI'});

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('TALK_TO_A_I_PAGE_Icon_b794dq9y_ON_TAP');
              logFirebaseEvent('Icon_navigate_back');
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Text(
              FFLocalizations.of(context).getText(
                'w49y0g2k' /* Chef Copilot */,
              ),
              style: FlutterFlowTheme.of(context).headlineLarge,
            ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(1.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.transparent,
                  size: 24.0,
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 24.0, 24.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 600),
                        curve: Curves.easeInOut,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (FFAppState().isSpeaking)
                                FlutterFlowTimer(
                                  initialTime: valueOrDefault<int>(
                                    FFAppState().timerValue,
                                    1000,
                                  ),
                                  getDisplayTime: (value) =>
                                      StopWatchTimer.getDisplayTime(
                                    value,
                                    hours: false,
                                    minute: false,
                                    milliSecond: false,
                                  ),
                                  controller: _model.timerController,
                                  updateStateInterval:
                                      Duration(milliseconds: 1000),
                                  onChanged:
                                      (value, displayTime, shouldUpdate) {
                                    _model.timerMilliseconds = value;
                                    _model.timerValue = displayTime;
                                    if (shouldUpdate) setState(() {});
                                  },
                                  onEnded: () async {
                                    logFirebaseEvent(
                                        'TALK_TO_A_I_Timer_g97sh5z4_ON_TIMER_END');
                                    logFirebaseEvent('Timer_timer');
                                    _model.timerController.onResetTimer();

                                    logFirebaseEvent('Timer_update_app_state');
                                    setState(() {
                                      FFAppState().isSpeaking = false;
                                    });
                                  },
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: Color(0x00FFFFFF),
                                        fontSize: 2.0,
                                      ),
                                ),
                              if (FFAppState().isSpeaking)
                                Lottie.asset(
                                  'assets/lottie_animations/Audio_Wave.json',
                                  width: 400.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                  animate: true,
                                ).animateOnPageLoad(animationsMap[
                                    'lottieAnimationOnPageLoadAnimation']!),
                              if (!FFAppState().isSpeaking)
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (FFAppState().isRecording)
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20.0,
                                        borderWidth: 0.0,
                                        buttonSize: 200.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.stop,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 150.0,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'TALK_TO_A_I_PAGE_stopRecording_ON_TAP');
                                          logFirebaseEvent(
                                              'stopRecording_update_app_state');
                                          setState(() {
                                            FFAppState().isRecording = false;
                                          });
                                          logFirebaseEvent(
                                              'stopRecording_custom_action');
                                          await actions.stopTextRecording();
                                          logFirebaseEvent(
                                              'stopRecording_backend_call');
                                          _model.getResponseAPICall =
                                              await OpenAIAPIGroup
                                                  .getResponseCall
                                                  .call(
                                            prompt: FFAppState()
                                                .speechToTextResponse,
                                            language:
                                                FFLocalizations.of(context)
                                                    .languageCode,
                                          );
                                          if ((_model.getResponseAPICall
                                                  ?.succeeded ??
                                              true)) {
                                            logFirebaseEvent(
                                                'stopRecording_custom_action');
                                            _model.speechOutput = await actions
                                                .fetchSpeechAndPlay(
                                              OpenAIAPIGroup.getResponseCall
                                                  .message(
                                                    (_model.getResponseAPICall
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                              FFAppState().apiKey,
                                            );
                                            logFirebaseEvent(
                                                'stopRecording_update_app_state');
                                            setState(() {
                                              FFAppState().timerValue =
                                                  _model.speechOutput!;
                                              FFAppState()
                                                  .speechToTextResponse = '';
                                              FFAppState().isSpeaking = true;
                                            });
                                            logFirebaseEvent(
                                                'stopRecording_wait__delay');
                                            await Future.delayed(const Duration(
                                                milliseconds: 100));
                                            logFirebaseEvent(
                                                'stopRecording_timer');
                                            _model.timerController
                                                .onStartTimer();
                                          } else {
                                            logFirebaseEvent(
                                                'stopRecording_show_snack_bar');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Failed',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          }

                                          setState(() {});
                                        },
                                      ),
                                    if (!FFAppState().isRecording)
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20.0,
                                        borderWidth: 0.0,
                                        buttonSize: 200.0,
                                        icon: Icon(
                                          Icons.mic,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 150.0,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'TALK_TO_A_I_PAGE_record_ON_TAP');
                                          logFirebaseEvent(
                                              'record_custom_action');
                                          unawaited(
                                            () async {
                                              await actions
                                                  .startTextRecording();
                                            }(),
                                          );
                                          logFirebaseEvent(
                                              'record_update_app_state');
                                          setState(() {
                                            FFAppState().isRecording = true;
                                          });
                                        },
                                      ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (FFAppState().isRecording)
                    Text(
                      FFLocalizations.of(context).getText(
                        '27xzotz5' /* Tap to Speak */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                ],
              ),
              FlutterFlowLanguageSelector(
                width: 200.0,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                borderColor: Colors.transparent,
                dropdownIconColor: Colors.white,
                borderRadius: 8.0,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 13.0,
                ),
                hideFlags: true,
                flagSize: 24.0,
                flagTextGap: 8.0,
                currentLanguage: FFLocalizations.of(context).languageCode,
                languages: FFLocalizations.languages(),
                onChanged: (lang) => setAppLanguage(context, lang),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
