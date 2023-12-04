import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'votonao_model.dart';
export 'votonao_model.dart';

class VotonaoWidget extends StatefulWidget {
  const VotonaoWidget({Key? key}) : super(key: key);

  @override
  _VotonaoWidgetState createState() => _VotonaoWidgetState();
}

class _VotonaoWidgetState extends State<VotonaoWidget> {
  late VotonaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VotonaoModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0.0),
        bottomRight: Radius.circular(0.0),
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.textController',
                  Duration(milliseconds: 100),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Votou não',
                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 24.0,
                        lineHeight: 3.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).tertiary,
                      width: 6.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).tertiary,
                      width: 6.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 6.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 6.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).accent3,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 24.0,
                      lineHeight: 3.0,
                    ),
                textAlign: TextAlign.start,
                keyboardType: TextInputType.number,
                validator: _model.textControllerValidator.asValidator(context),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if ((_model.textController.text != null &&
                          _model.textController.text != '') &&
                      !_model.isProcessing) {
                    HapticFeedback.lightImpact();
                    setState(() {
                      _model.isProcessing = true;
                    });
                    _model.withdrawTxHash = await actions.voteNo(
                      FFAppState().contractAddress,
                      FFAppState().className,
                      'id',
                      'id',
                    );
                    _model.updatePage(() {
                      FFAppState()
                          .addToTransactionHashes(_model.withdrawTxHash!);
                    });
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Processing withdrawal...',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                        duration: Duration(milliseconds: 2000),
                        backgroundColor: FlutterFlowTheme.of(context).tertiary,
                      ),
                    );
                    Navigator.pop(context);
                  } else {
                    if (_model.isProcessing) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Already in process...',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontSize: 14.0,
                            ),
                          ),
                          duration: Duration(milliseconds: 2000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Please enter an amount',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontSize: 14.0,
                            ),
                          ),
                          duration: Duration(milliseconds: 2000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      );
                    }
                  }

                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: _model.textController.text != null &&
                            _model.textController.text != ''
                        ? FlutterFlowTheme.of(context).tertiary
                        : FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: _model.textController.text != null &&
                              _model.textController.text != ''
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).primaryBackground,
                      width: 2.0,
                    ),
                  ),
                  child: Stack(
                    children: [
                      if (!_model.isProcessing)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Withdraw ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: _model.textController.text !=
                                                  null &&
                                              _model.textController.text != ''
                                          ? Colors.white
                                          : FlutterFlowTheme.of(context)
                                              .accent3,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              if (valueOrDefault<bool>(
                                _model.textController.text != null &&
                                    _model.textController.text != '',
                                false,
                              ))
                                Expanded(
                                  child: Text(
                                    '${_model.textController.text} FFCoin',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: _model.textController.text !=
                                                      null &&
                                                  _model.textController.text !=
                                                      ''
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .accent3,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              if (valueOrDefault<bool>(
                                _model.textController.text == null ||
                                    _model.textController.text == '',
                                false,
                              ))
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                  ),
                                ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: _model.textController.text != null &&
                                        _model.textController.text != ''
                                    ? Colors.white
                                    : FlutterFlowTheme.of(context).accent3,
                                size: 24.0,
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
    );
  }
}
