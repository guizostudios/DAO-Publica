import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'welcome_model.dart';
export 'welcome_model.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget>
    with TickerProviderStateMixin {
  late WelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    )..addListener(() => setState(() {}));

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 16.0),
                child: Text(
                  'DAO Pública',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xC5333333),
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    constraints: BoxConstraints(
                      maxWidth: 530.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.00, -1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 16.0, 24.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                          ))
                                            Container(
                                              width: 230.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                          Text(
                                            'Acesso',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xC5333333),
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 24.0),
                                            child: Text(
                                              'O acesso ao sistema é realizado através do login gov.br pois é validado o título de eleitor e o municipio onde a pessoa reside.\n\nOs votos somente são realizados em projetos do municipio que você é eleitor.',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'data:image/png;base64,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',
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 16.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  context
                                                      .pushNamed('AllProjetcs');
                                                },
                                                text: 'Acessar GOV.BR',
                                                options: FFButtonOptions(
                                                  width: 230.0,
                                                  height: 52.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF071D41),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: Colors.white,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'columnOnPageLoadAnimation']!),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.0, 0),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: true,
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyLarge,
                              unselectedLabelStyle: TextStyle(),
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              unselectedBackgroundColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              unselectedBorderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 12.0,
                              elevation: 0.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              tabs: [
                                Tab(
                                  text: 'Criar conta',
                                ),
                              ],
                              controller: _model.tabBarController,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
