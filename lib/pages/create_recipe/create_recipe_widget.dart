import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_recipe_model.dart';
export 'create_recipe_model.dart';

class CreateRecipeWidget extends StatefulWidget {
  const CreateRecipeWidget({Key? key}) : super(key: key);

  @override
  _CreateRecipeWidgetState createState() => _CreateRecipeWidgetState();
}

class _CreateRecipeWidgetState extends State<CreateRecipeWidget> {
  late CreateRecipeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateRecipeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateRecipe'});
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
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
        endDrawer: Drawer(
          elevation: 16.0,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 60.0, 12.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '1tb1rivq' /* Menu */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge,
                ),
                if (Theme.of(context).brightness == Brightness.dark)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'CREATE_RECIPE_PAGE_Row_ma5f7mta_ON_TAP');
                        logFirebaseEvent('Row_set_dark_mode_settings');
                        setDarkModeSetting(context, ThemeMode.light);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'a0t2k0co' /* Light Mode */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Icon(
                            Icons.sunny,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                if (Theme.of(context).brightness == Brightness.light)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'CREATE_RECIPE_PAGE_Row_qybo8566_ON_TAP');
                        logFirebaseEvent('Row_set_dark_mode_settings');
                        setDarkModeSetting(context, ThemeMode.dark);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '0oc6lxcz' /* Dark Mode */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          FaIcon(
                            FontAwesomeIcons.cloudMoon,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(1.0, 60.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 12.0, 24.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'wyghwea4' /* Find New Recipies */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Urbanist',
                                    fontSize: 28.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 24.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '9hky9wlz' /* Provide a list of ingredients ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 24.0, 24.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '45wma1h4' /* Enter the ingredients you have... */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController1,
                                  focusNode: _model.textFieldFocusNode1,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'o77r9xik' /* Ingredients... */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 24.0, 0.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 24.0, 24.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '83webv9g' /* Enter the condiments, seasonin... */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController2,
                                  focusNode: _model.textFieldFocusNode2,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      '61yhukpg' /* Condiments, seasoning and sauc... */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 24.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 24.0, 24.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '37x86g0c' /* Available leftovers (Optional) */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController3,
                                  focusNode: _model.textFieldFocusNode3,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      '1dq6vb1s' /* Available leftovers (Optional)... */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 24.0, 0.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontSize: 20.0,
                                      ),
                                  validator: _model.textController3Validator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 24.0, 24.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'zjmmdqlp' /* Type of Meal */,
                              ),
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 7.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'hdapt8yw' /* Please select what time of day... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                          'voelnu9b' /* Breakfast */,
                                        ),
                                        Icons.sunny),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                          '87ho4ceu' /* Brunch */,
                                        ),
                                        FontAwesomeIcons.cloudSun),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                          'ulib0d6s' /* Lunch */,
                                        ),
                                        Icons.cloud),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                          'ndm65i1k' /* Dinner */,
                                        ),
                                        FontAwesomeIcons.cloudMoon)
                                  ],
                                  onChanged: (val) => setState(() =>
                                      _model.typeOfMealValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 4.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.typeOfMealValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 12.0, 24.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'a6jso50c' /* Available Time */,
                              ),
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 7.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ihs0yb7a' /* Please select how much  time y... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: [
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'juzf3y71' /* 5 min */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'hegbzyx5' /* 15 min */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'h4xsybxo' /* 30 min */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'tpy3ke25' /* 1 hour */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'gqz7hg8x' /* 2 hours */,
                                    )),
                                    ChipData(
                                        FFLocalizations.of(context).getText(
                                      'wm5hsb1s' /* infinite */,
                                    ))
                                  ],
                                  onChanged: (val) => setState(() =>
                                      _model.availableTimeValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 4.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.availableTimeValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 12.0, 24.0, 24.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'CREATE_RECIPE_GENERATE_RECIPIES_BTN_ON_T');
                                  var _shouldSetState = false;
                                  logFirebaseEvent('Button_backend_call');
                                  _model.recipePrompt = await OpenAIAPIGroup
                                      .createRecipeCall
                                      .call(
                                    listOfProductsAvailable:
                                        _model.textController1.text,
                                    listOfSpices: _model.textController2.text,
                                    typeOfMeal: _model.typeOfMealValue,
                                    availableTime: _model.availableTimeValue,
                                    leftOvers: _model.textController3.text,
                                  );
                                  _shouldSetState = true;
                                  logFirebaseEvent('Button_backend_call');
                                  _model.apiResultlfu =
                                      await OpenAIAPIGroup.createImageCall.call(
                                    query: _model.textController1.text,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.apiResultlfu?.succeeded ??
                                      true)) {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'recipePage',
                                      queryParameters: {
                                        'firstResponse': serializeParam(
                                          (_model.recipePrompt?.jsonBody ?? ''),
                                          ParamType.JSON,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 200),
                                        ),
                                      },
                                    );

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'An error occured',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) setState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  'q8lqcaym' /* Generate Recipies */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 16.0,
                          sigmaY: 16.0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'CREATE_RECIPE_PAGE_Icon_5wmthmz8_ON_TAP');
                                      logFirebaseEvent('Icon_navigate_back');
                                      context.safePop();
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'wjgshfr7' /* Chef Copilot */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Urbanist',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              indent: 12.0,
                              endIndent: 12.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
