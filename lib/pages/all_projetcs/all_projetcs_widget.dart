import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_projetcs_model.dart';
export 'all_projetcs_model.dart';

class AllProjetcsWidget extends StatefulWidget {
  const AllProjetcsWidget({Key? key}) : super(key: key);

  @override
  _AllProjetcsWidgetState createState() => _AllProjetcsWidgetState();
}

class _AllProjetcsWidgetState extends State<AllProjetcsWidget>
    with TickerProviderStateMixin {
  late AllProjetcsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllProjetcsModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  'Projetos em Votação',
                  style: FlutterFlowTheme.of(context).displaySmall,
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Abaixo você pode ver os projetos que estão com votação aberta na sua cidade.',
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Commerce');
                              },
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x320E151B),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 8.0, 8.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Hero(
                                        tag: 'ControllerImage',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 80.0,
                                            height: 80.0,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  'Novas Creches',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ),
                                              Text(
                                                'Creches para 200 crianças na zona sul',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x320E151B),
                                    offset: Offset(0.0, 1.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 8.0, 8.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Hero(
                                      tag: 'ControllerImage',
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          width: 80.0,
                                          height: 80.0,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Educação a Distância',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleLarge
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              'Desenvolvimento de aplicativo para educação online',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x320E151B),
                                    offset: Offset(0.0, 1.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 8.0, 8.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Hero(
                                      tag: 'ControllerImage',
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          width: 80.0,
                                          height: 80.0,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Melhoria de Hospital',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleLarge
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              'Melhoria dos hospitais da zona leste',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Container(
                        width: 430.0,
                        height: 400.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Demais projetos',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment(-1.0, 0),
                                      child: FlutterFlowButtonTabBar(
                                        useToggleButtonStyle: false,
                                        isScrollable: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF14181B),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        unselectedLabelStyle: TextStyle(),
                                        labelColor: Color(0xFF14181B),
                                        unselectedLabelColor: Color(0xFF57636C),
                                        backgroundColor: Color(0x4C4B39EF),
                                        unselectedBackgroundColor: Colors.white,
                                        borderColor: Color(0xFF4B39EF),
                                        unselectedBorderColor:
                                            Color(0xFFE0E3E7),
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        elevation: 0.0,
                                        labelPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                24.0, 0.0, 24.0, 0.0),
                                        buttonMargin:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 8.0, 0.0, 8.0),
                                        tabs: [
                                          Tab(
                                            text: 'Em breve',
                                          ),
                                          Tab(
                                            text: 'Todos',
                                          ),
                                        ],
                                        controller: _model.tabBarController,
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(12.0),
                                                  bottomRight:
                                                      Radius.circular(12.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    8.0,
                                                                    16.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 4.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFF4B39EF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF4B39EF),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'New Product View',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Sally Mandrus, viewed your product',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: Color(0xFF57636C),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              '3m ago',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF57636C),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    8.0,
                                                                    16.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 4.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFF4B39EF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF4B39EF),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'New Product View',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Sally Mandrus, viewed your product',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: Color(0xFF57636C),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              '3m ago',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF57636C),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    8.0,
                                                                    16.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 4.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFF4B39EF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'New Product View',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Sally Mandrus, viewed your product',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: Color(0xFF57636C),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              '3m ago',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF57636C),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
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
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF1F4F8),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(12.0),
                                                  bottomRight:
                                                      Radius.circular(12.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    8.0,
                                                                    16.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 4.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFF4B39EF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF4B39EF),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Escola Infantil',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'No bairro Jaguaré',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: Color(0xFF57636C),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Aprovado',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF57636C),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    8.0,
                                                                    16.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 4.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFF4B39EF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF4B39EF),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Atividades Sociais',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Será realizada no dia das criaças',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: Color(0xFF57636C),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Aprovado',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF57636C),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    8.0,
                                                                    16.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 4.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFE0E3E7),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFE0E3E7),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Pavimentação de rua',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Avenida Paulista',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: Color(0xFF57636C),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Não aceito',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF57636C),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF1F4F8),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    8.0,
                                                                    16.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 4.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFE0E3E7),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'New Product View',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Sally Mandrus, viewed your product',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: Color(0xFF57636C),
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              '3m ago',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF57636C),
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
          ],
        ),
      ),
    );
  }
}
