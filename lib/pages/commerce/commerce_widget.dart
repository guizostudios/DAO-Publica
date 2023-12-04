import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'commerce_model.dart';
export 'commerce_model.dart';

class CommerceWidget extends StatefulWidget {
  const CommerceWidget({Key? key}) : super(key: key);

  @override
  _CommerceWidgetState createState() => _CommerceWidgetState();
}

class _CommerceWidgetState extends State<CommerceWidget>
    with TickerProviderStateMixin {
  late CommerceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'blurOnPageLoadAnimation': AnimationInfo(
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
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.6, 0.6),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
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
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommerceModel());

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
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 54.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: Text(
                  'Novas creches',
                  style: FlutterFlowTheme.of(context).labelLarge,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Color(0x28000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 400.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: FlutterFlowExpandedImageView(
                                            image: Image.network(
                                              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMUExYUFBQWFxYXGSAZGRkZGR8eIBsgIBscHx4gGyEfHyojHx4pHhkeIzMiJistMDAwHiE1OjUvOSovMC0BCgoKDw4PHBERHDQmISYyNy0tLzcvMjIvLy8vLy8vLy8vLy8yLy8vLzEvLy8vLy8vLy8vLy8vLy8vLy8vLy8vL//AABEIALcBEwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgQHAAIDAQj/xABFEAACAQIEBAQDBgMFBwMFAQABAhEAAwQSITEFBkFREyJhcTKBoQcUQpGxwSNS0RVikuHwFlNygqKy8TNDcyQ0Y8LiF//EABoBAAMBAQEBAAAAAAAAAAAAAAIDBAEFAAb/xAAzEQACAgEDAgQDBgYDAAAAAAABAgARAxIhMQRBEyJRYQVxgRQykaGx0SNCUsHh8BUz8f/aAAwDAQACEQMRAD8AYnYR8Q371v46AfGv51Sg50xUQGQD0T0jvXP/AGrxX+8A9lFc84s1Cq/GVBsd8mfRnKN9fEdQQSyT/hP/APVN1UT9jPMFy7iit18xG2gGjAiNP7wWr2qrCGC03MTk035Z7UTH7Kf5XU/WD9DUuovEVm2465SR8tadFyQdqVxx5mFpCk5gQ5PoNfrSZzt9oeIXGfdcI6IttQXcoGJMBiNdAACBoJmdaOch8bXE2bhvlVuW3ykjy5tAQwHz+lLLi9MMIa1dox4VA6EdGtkCRrVbcY4XZvv50YgHYGNafrHF7Voq124qDUS7Ab+9QrOJtvJtsriTqpBG/pU2fAz1pavpKMebw2NfrF+zfRbtpihyoRI9qd/vqO1wAhoWYpS5mBCKVGoNdOEY3I95wsm5bUgfMzSOlvG7ITff8oeUeIocSVib6vnRxsDIPrtFDhCo4IhANI2HoK94c7FnusupOWR2+fqa04njQkB9MxjaZ9+wqoxQ5gN+LMt6CuvhyQNwOg7CmbhOJzqr/hZQR8xNKIJN6/CiPDjeNp19ta6cq8w21sLbuMFyafLpQoaM1xfEY+PcU8JcwgkdD11qXyfjGvWfGuKIZiFC9gY6mkTH4l8ZeyICLSmC3p1+Zqw8LiLNpFthkQKAAsgRRffPtBI0j3hSRPwVGxNp2PlIUV0S5O1dCe9Y3TIwo/rBGVhxB33S9/P9TXv9n3f95+tT81dJpX2DF6H8TC+0v/ogwcPubeJ+v9a5nhr/AO8/X+tFC1eTXv8Aj8Hp+c37Tk9fyge5w5/5/wBaTeA8uYoYm+br28l5SsESxEmPYeY96fsbchWPYH9KSOJZ7HDhdsWz4o1LAy4DNqddYIO3tWDplxtWPa+YQys6+bebf2riPvAwyqpCHLAPQdZ66RSbz9w6+2JuMWBVLQuGSBCgkQB11mifKPL10MuMe81mWIbOfNqTIysNQTtNCuZ8RYuve8RLtwhgi3swVj2HhxGUE7iCabqcvV+X+8Wg0C+T/aOvKSKmHLu2RVj1/CPzope4taRJXOx3nwzt316UsYBy9oWtSoOp9YgV5x64bSZCWDOAoBnResekVzMq49dAbzrYsLMgLH6e0aMfxAnDXDDANZZgSB/LPeq94XxNgktiHGp0AG3+Gn3mJlGCIXpZj81AqqLeHvG2B4bxMQFYEy3eNKt6ckLtORmNtvLYuSTshAjcanyjWkjmW7OIiB8dsQPcU8tcIDZQCegI7fpVfK+fHWi4+K8JHbXb5RFWMAQo7wUsBj7S0lNe17NeVdvOdPmsV6KZsNyRi2/9kr6uyr+9TV5Hdf8A1cRhrfvdn9AKhOZB3E6PhN6SL9nGNa1jUgwWBAPYjzA/mtXjb41fbe+3yRB+1VZwLlyxbvJcGLtuVMxatu8/4af7TKNQl9vZFT/vYUHig7ib4TQz9/uHe7d/xR+lR+JcUSzbNy87ZRvLsflE1HXFa62QR1Fy6uo9lmfaaX/tHt+JYV1UeGj+dFkCCPKdOgNA3VIGCnvCGBzK+fjwfiF6/bEK5MA9oA+sTTryHxwobiXDk8Zg9smPNpBA7HSYqrOJ2FRs1uch9dvSnH7OsLfxDtktlrdsEi4fhUlYyydzJmBRML8ywwaGhoa5owjXsRLec3CEtR8KjqT9amYDh1nDYmzkMOTBgnzAiCCOokj6UV4VhltKql5bqT3n6VDwgzYyQoICkljr1G3bWkBiSI7wwqmH+YNbXswoXjOJPat2PDSTdD2y2wGWW17mAfyNFeKa2X9p/KlHmjGO+BNmFyo3igx5p16/M0pmVOpGruK+szHZwmhwYwcCxjvh1uMupJVVO7MDBJ9CdR6V7dJzjOgLGR7Vw+z7ED+zrJLSZuCP+dv2ivMRjHLsCUIVRl7zrM/KKvYVFoQd6gfmHCXBcV7Y0AyMndTvNAON4FXuhku2baEAElwPnFMd3E3Xtu9pENy2wEM2hnc+ulVRxjhxtOQwAY6wuwk7D0paaSaM9ktRYlzcItWrVtUW4rR1zDWiC8q3bzfeAAVJEA9R1b/XaqC4ZaVrtoGADcQE9gWANfWCYw2lVQFKwFUewp+gHaIGQg3IuCwwB2AoBzh47PZt2LhQmSzCNBpvNHLl8ZYGUzpoaD3cMFB7t5QZ2B7UsMV2Ig3vtAdrjdwOtm3ca4waHLDUiJJ0EUWv8TZioVyoBhuh+tV3z3xFbDqlhmUkElxoTrEKw6d6V8BzLiLW15m7htf1rFfIBYAjmTGdt47c289vYvZLJ8QCCWJ09hH60x8m8xXMUiso/wCMH8Osb9ar6/Ys3LNu8qS12ZkHVhoQPnTdwJWwWHCDd1LkfytPT86X4wO554h+EQNIO0buK8QtWhF5lQNoMx370kcRm/cQJjbQthg2RCNMvmX31A30rlzFjmvYdWYzDkdOw7ULsXFsXDkAnJIJIPed/wBK0swFjmAKB03tOvMvCb4/i28Ytw3ArEM4BBBMeGBpGppLfB3VuKWclyw1JnUmJJNMfEMeSLV26ghFhY/HqT8t6D4nj/iEZrYCiNAeg+VYpY8D5w2Cgb89pZPDsBesqINluvxxP50O5j4bi77s4trOTKkOunfrShxbHWby2sojLbVCCNiJ+mta4Zrenl+tFj+HlvOBCPxBl2NXDfM3GHw9gWfN4joFOZj5YjUflFLfDeZbtt1L3LzJpIznv09PSo+Ps57pIOyyATrExA9aJY7hdoBQ4OcLmOXaKJtOPymC5OU6pZnCuIi/aF220gkntA3g+tJvC7PiY1NiFYt9TRvklDbwc9GmF9JP6xSFxjFPbIa25Vs0yuhG8a/OsDW49oJT+G0uf7wO9ZVLrzrjRp40x3Cz89Kyuh4gnM8FpZdjl3DwJRW0/wDcZ7mv/MdvShC8W4dbJS2hZl8pFuzrIOsGO9M5v4ewB/FtlR1upJ/PMP0rZefeH2hGezI/3a/sAa4eLpnP/Yx+k7bdQi/dEB4TiVx58Dh+Laf5vID+giieF4XxR/gwNm163bk/pNd//wDUbU5bWHv3D0C2yJ/xRUt+b+Kvpa4fk9btxR9BNUDpMfez9TFHq27SfwjljHQfHbDg/wD4wYH0FEbfLV5GzjEKpA6rKz0ME9tN6V2vcbu/Hfw2HB7Asf1Ar3DcEck/ecXfvtOwbwlH+CGPzNIyp03TnWRv2nhky5NhDn+zeHueXErhb9wySVsBJH+InTvNQsbzHgMMPu6XbdsWxGRdAsdNNJ9N6A83Ym1gLDNhrapfvfwg+pYKfiMkz2A9SKqDx1BGmxiO8nUn1qrBmGbHqURLoVajLY45ZGJR3sXlW4olhOhG+vY+tc+AcZR0tm3ajN5GjowAmP7upIPoaqTxmR2ysRuN+h3B7zTBwx7rsoVigEEQY1A/Xehyrp3EowkONLS4brSjD+6f0pXeGUg7EQaK8LZ/Dh3DmN++nWgSvXN642VaUdMK1LFThHEL2HxH3fO6oSQBOk9GHvFe8a4ziVafFOh7D+le84oVe1eCmB+PoSDMT3jpRjhNhLuIhgpVrZbX/l/rXZwuMmNWbvzCw6VxZBpsruPWceXeIZhcFy6wZoy6DXv+VRMfw0YjEC0gzEg6nQd5YiYFWtynwHDLavMUUtcYqWMaCBCqeneoOJGCw9h1tAEXSbTOkHKSI856ATSnx/xLXiIyZxkWwtXW3pKoxvBrdu+yMkMpB8jyo0BEaVaHCebUusou+Q9GLeXaI170o4/h+GtwGvI5RT8DKM06gEgakGli7xC2YW5JQMM2XeAenrXQw5sObESBuB6VOfmwZMLgE2DL3+8Wgc2ZdB3HalHEfaBgnjW6R3FuhPH1UB2A/DIn/hquheknSNdqzpsKZL1RWZytVHnmTHcOxNlFW5cW5aXKma2dR1BgdaGcNwttgVtW/FdBPlQkgd4+dLyNRzgF57J8YMUMQCOo6jXvG9b1PRoqkgn2jOn6htVVGzDcfUIlo2QDbAJkQAfQR1qHd46Ll57hdV8qi2Drse0+s0v42+94swnp1mN6hPbgdT7fv/r/AC5Zx3LfErgRqTiKpbyW79ssXLNIXqNoO1a4kYt7TQLJUj4raqD7SD+1JuKSI6egO1cMPxC7acOjspHYkT79KYqn5xRPpzDnN2JuA20vIqEJoFEAjp1NCMDwi/e1tWiQdZOg10Gp9qZ+E8SwWLuqmOVyxyhLoZh8nA0A/vDTvETVh4vlBlQLhroRVEBGWfrv9DW+avKJo035jKRxvDbtn4xpJWRtI3Anep3COHXLqNcHlRWyknqYmAOulWRx/hmEW1kuxnUGI+PMRqR7nvpQzG4AWMLhrWuaCzjuTBJ+sUOT4g+JAq8mYnSq+SzxBPBOQHxBF0u1u2CfP1c9Ao6AHcmtOLYTEJcFh1YZiEVgNCCdweunSnbkbmBr4uWng+H8BAjyzAB9qYsSA24nXSh0PlAa9+9/rD1jGxWtolf2RcsgLnUINASW+vQa0gc2YJ7arorIWOV1O/oZp+5q44p/+nWS7z/0xI+e1B+O2LbYa5b18loFZB+INmgflRg09TKJQytayvfDJ2FZVViS0ZeGKsKwEgHzAfWuT8OtQALVv3yiu1u8GVWGoIDA99NP1r04qNxUS9bhPJr6RpwvBdvBEFyhKENAy+w6VwXiuLfMly++h6Qukegrvi+P4e25zNEj31Ht6fpS7jOarQuFraMwI66bVSoDjUvEDcbGTb+EuO9oFmJW4pJZidM2+vvVkYw5bjD5j51Uo5lxF2fCsjQdAWIpo5m5lvHA2MTbtlHuMbLyNUZQTt6wSPQioPiHQZcxXSPaU9NnRL1Gd/tDwZv4dRbXNcW4sBRLQTqAB0mCfaelVjwzg125d8MW3YjdVBJ09pjca+tM/wBmtl7vErT3rl0hQ7ySdSEIg+hnoKv5raWx5UVZ3gAVX0/Rvgx6Cbi8mdXbUBPmjiPAGslluqVeAQraROtTuJ2lt2oVjPhKdBJzaGB/UU281Wo4hdtm0bj3MtxRA1UqF3OmhUj8qh8R4LibS+I2G8MLrmZ7ent5v0qTWTRaVqFogd5F4filwthVZyzkhyF2AIHlM9aZuSeMo/lXB27jDMRdMnUEGIYQCAw2NKHALDOty6lo3XBy67JqJO8mRMnpR7lXiWIi7aw9q1a1BOZmGuo0AXXYVqg7tVgd9tpjKi3vRPb1kn7UMdcvrbw15hbUHxMttQxkAhZ100JoPyxwa5C4nMoRQUUOcjXIESNxH9KZ+KYG7bVsUMpuXLa27lvKWVjtmB0MxtXfg2ExDYaz/BSVYwjErCEHeQYM9B0NVMScdgWD8p5MvhikqzzvFfivB8TfuI9vw/IZCG6GEkaGNtYiidjlwIPPmCk5rgMNJA6RoBTbwzl2wigmxbVxroc8HpDEA/pQ/BYfDm7irTSSwHiTOxB+A+x6VNk2YItgesw5Sw8544A7+xMSubuWTibaLhELOjSZhRBEaesxUnB8oXUtr4hQtbQeFmtDyt/eI+Mb6GmblfGrnvBlCIH/AIbHQMNtZO9N2URrt60/DjbEoUn3/GSs65DqAoSsbtjFwc9vC3JEHyss/U1vjeXbIurbt4K2SzqpKsVyggEsfaTp6UwYoqXJT4J0/wAvSunB8R4mJugqQFQtm6SdBHsJocmdkRmHaeGMMQDAOO5dwdpWdkJVROpPT0B+lIGPvh2JCwOg2gdIHt19aP8AO/GSQLSmFE5iADqNtT69v2pRPxebSN9Y/TWfYUrpTlddWRiSfyjsoRTpUQ7wi7Ztz4rgBh6n6Cu+Lwq3BnturW9oEyvuPb1oRhiNSfz0/epGGuZSChWe5IHsTpHWnkd4IPaDsbhSDtHvQy/proR19KevupvqzXAq5R8dvZwO4Bgn2NJXE7a2rjLOYERoD++tEhvaC61OeHbMhiQbZnTTRt/9e9W5yDzDevWfuqOrPbQFbjZiSpJ3n4mUZdoEMvbWnltMMwUyCBm32H/mjXCOIXrbg2neVHhjKCRDEGBB0LEAGB0Fa62CJghrj4S/ebNcLXEYqWMw2U9OkadK6cz8Rv3rlvw/LbCLmgxrMsoPbQAd6auGcpYfIJzE5QSrMZWehg7jauj8uYddFux6Ek/qDURChhdbcA9pRqBHf5iJfA+KNg8QWuI2VxoP7rHMCDsaf+Hcy2b5CWixc7KVM1Etco5/KLiMnYzoPSRH5RR7DWsJw9YGUOw/52/ov0qrDkJG3EVkC/WKnFuQ3D3MY1zVWDC3E6T5sx9joB2rjdw6FSCBBEGjuO4xbxBBe4uRTIXNAB6TrqfevGS2dsv0rWYE7RdesqHDYhQsSNJH1NZVj3OU8MST4Ca+leV7yzdZi7wnmQJhbNtVOi5SQeoJ+latxZ37D60E4TbtmwuZ8sls8CSBIgx8vrTBYey2llDoJZ22Ud/f0pLdLi1Fqmh3qoL4th1Kq8nM0j0Mf+aG3+EMltLhMh5Gm+kfsaO4kBgJ+FWMeugru+LH3bQD+Hc/7h/UVWmUqtCJKgmzOXKnAszM4JUIpZi2xEQBHqf0oxYFoE5wcrA6rJKmDBADqPzoFw3HXDnWSA6nbqRqB+tSeF4jMhQ7r+nSvoug/iYPMZB1B0vtNUv3LbZkuOpHWdfrNGcJz1jlIzXPGEjyMi6+gKqCD2oPfStMHcCXbbnZXVvyINWPhRhuBJ1dgeZZDG1iXt4pN/DKg/3SQYI7giPzoLxPhFu9jEGJvXWtODlQvpIGw6x7d6D8l8b/APqcRZOis73EB6SxkfUH86aeMY63aQ3WAYWxm2kjoSPlXymbEmJmHqZ18bsygiEb+BsWLU4W2FIOqDTOD3J617yrh/ivPbCFjASQco7k9z2rrbuEASBr2qPxXmOzhY8QMJBaVWdv3pasw8oqprAMdR5jN41eh6rfEfavhV2t32/5VH6tUHHfa1lgJhmMqGGa4BoRI2U16jPS1byFlImJET2pXTlwo7OcXcDMIJAWT/iDGt+HcTe7at3GABdAxAJIEiYk0lcI4niG4ndtXLzMiB8q6AAeUroAJgHrSXVW5EajMvEMYrgnD1bw3e5ccycrXTrG5yjX6UcuOzoFzEKBAH6Sdz86rZ4HGn/vqfra/wAqsC3xG2AAJYx0H70GVlTdjDDM4rmp2trIBFcMQSCMt0W3aYlgucRsCeo3EyNwd63suxmBANBObsOGUA7lWX4A+8QuU9yAZG0H0qVerR30DeM8BlFmIvFeGXFf7tczA2tFkjzrqQ0AbnU7zoaDSBcBJzba+sa/WmHma9GGw5B/iW3a23aU0GXeJAU6k7A/iMihw11AYq4AAGoiO/rrXRBAiCCZ2SAJ1A7gn8txr6VK4fcLwiAAT1DGfchuvaKFuVBBDLpqRl3+n096P8DxGS4brAQqkLEKD3+cGgY7QlG8IcwcQVEWwmyiWiBJMSYH/mq/uXQboO8bZh+oohxS4rubivvuDuP60KW0ZzDU7j/X7UeMUIOQ7zut3WABEQWH4tev6VLwzKly3ctm4pknQiRpplbTvvpGnWoLAwCPLAnfv0npsYFEcGC1vX8GxB13+EbwNSZjTWtaYsurgHEUu4dMrW85UF8pDRtuY+KDr6zUjE2XUq0Kyg+YZQT6EGRH5Go/IvDPAsKSQRcAYmAd1B0P4hMnoNZgGmXEYJD0yz1Gx/pUGbpczNrUg+0MOo24inf43esKXZbQSD5lMGToog9SSNai8S4JaUzca6zuuZmKlumon06DtTHi8AB8Sg9iQDXi5RuojrEilY+pCHw3Gk/LaMGM6bG8VkweHvN4eVHU6wVYDpvMio2M5OsvdZSGzBVOrbAiAFIAMCOtOdnhtlCSiBSd46142GAcvJzEBTtsJjp61UuAA2Dv7cRLuGFQFh8DetqEDaKIEvJ+dZRzLWUzwveKqfPeE1Md9qmhymmcgdRP7VL4ZyzfvAMMqKep3/Ia0zcO5IsLrcZrh/IfkNfrXmFmdfxsaCuYtJjbbwgS67aRB69dImKYsNwlvCdSpGYKYO4IM/vTVguH2rYi3bVR6CKk2jBIrRIMzq5tVqKuC5f/ADp6xHCLKqL1u2qB7anKoAGeYOlRAw7UZ4z5bdm32QE+51P60/HldAdJkzKDyIv38IriGRD6lRNK3MXDxh7oR8Nd8yh1eyGZSD+cEdRFOjOF6/1otwfHo4C3AJXRcx3Hp610Ol6nMNzuIjLixmU0/LuNDpibNhwrk5TcgEEGCLikgjv66UZbgHErylL161bQgghBMz0Og396tjH2ZtHT8cj5/wCQFI3NXNVjDKVFwXL3S2mpmNC0bd9aXlQZX1soJ+UJPKtA7RGsc/4uyngMtt2QlC7SSYMbCBpG/Wo2K5qv32UYhlyAEeRIifYydqX1wlxtW0nUk9Sd62tYaGhZZuwkk/IVj9MeQKhLmA5nHijgvK7bfCRr7HWuNy/myaaqgT3gmPoaJWcAbiOVEkan8v8AKh+Gwdy4rFRIQFm6QBH+vkT0NTVW0M+suTl+89rDW1vFZVdY2A6Ak7kDrSdwziB/tBruRv4jMPTLpB/ICpqY03rARgYdACZ9BXfg/CFt6rMnqTOnYdhU1Rxgjid+OL236HL9VZasXwbaomkM0mfSYFVjzKhTHWT3y/8AcRVoY5DNsHSLa/mRJ/WsyY1dRYuYjFTtOlrGqpCkHUTMafOumKwS3QGADZTmE9CPQ9YqELdTeKXAmFtuBoCwMd5H7VD9iQNqU1KB1DHYyqubcG3i3IKhcxOTNopk/D8527kUd4LbOJtiLpF1BDo+wnqsawfXbadKgcWZXW4VZQFEqxEEmRprrI6HT86n/Zxy994xNwv4iJbt5/K0Es2iSRrHxNA3KQeoqxdxU8TpNydd5dkoWKSu/Y+sjWhXMGBc/wAO0VM9FUiPqabH4JellzjMOjDtuNIoViMJxBW/heB7AEH6zSxquOOkiKWH5LvGPEYKDsAJJPrrXPiPLFy2Aubf8qszhPDnVfExBzXffQe1L3NmMCqxG+yj1P8ATf5UfiNcAY19Ijf2czaoMylskkfi0O8nvGYxRXlThYZ3tXkYgFgYOkrmBWZGXX8XrpTNwblRnwdryAs7+K5OmVWBAgd8kfX1BsbCcLUMWgSdZHXTenYicgJ7X+knyEKZPw4U2xG0CP2rjcLAR1Go9f8AW1TrSeUj0rW/ZzKO/SrBJpCF0Mh6gHLrsQTAn5xSljsQcNci4S2Hunw5O9h20Rp/3ROkH4SRBiFpjsDKjoTu4A/OfoP0pb+0DFgYW6uhm1DT0zNkX55jI9vaoOsxhtJq9wD9fT3EdiYrdfOa/wC2FpSVuBlZdGleo32rS7zvhRGa4onaQw/UUu8Uw3jYHD4saubYS8f5ip8PMfWRr7+lJnMTqbaRuDHyimnGUbSTMsEWJaP+2+E/39r/AB/5VlUtbUQKyi0Qbls4FVUsLb6ZiSsgwTqfbWpq4jvFVPw686tKgz/d0Prt++lMi8ZuKIuypmAWUjMZGh6A603J0TqNS7wVyg7GP1vFL3r27cGjdt/ak+xi3O1E7F4x1qMGNIjOhmit5fvDDUhsmWNIkDeeg0pbwjkAA0xcHaFuv2TKPdjH7U1DvAYRdW8w0fyt2/z61y4iyXEysARPXWmK1hs+hAI7EV0PA7PVB8ia6ePqxyRUmbF7xexdlRwtUl4u3yT5jPl0iZ0Hl2pFxBw9ggLbUt0CjU1b/wBxthPCiVnMFOusfvWnDuF4e2z4hLahmhWMDQGfh/l9QN61erC3Q73MOImt5S+FwWJxpcWUUBAJk5QJ2nqTpVg4HAWcIE8FAHAGZtyx6yTrB10pf5Wwt7C3sRnZfCbyqZP4WJEaa+U0RxfFWuGAhKjqNZ+frUWbqWfkx6YgOIvc6YdsNjXayAFvqLiiNCG3H+IE/OhvHcW33dMkZWjM+WM7ET5QdcggR3IB/D5mPii3cRh0HhAnDErcYno7Stsddh5vQgfioLzFZY4ZiUiCpn5x+9JBoxjbiEOW7ith7U75YPyMUdtsQPKrflS5yRjFFgAjVWbX5z+9NKX2PTSgPMIcRb5h4JexF6zcWFCQDP8AxA068Uzm+4BhRA/ICoYdgQQBIMgHb51JAdiWeJYyQNh/Ws2qhM73Pbds1x4i7BFSAUkk7TJyQBPfLB946yCFu2aw8P8AFZEOxOvy1g69Yj50sj0hqd94tpwwsrjQQC06gMYMDfudtt/SmP7OP4K4hH0zXR5oAghRoY6QR7EmpXCMHca5KgACVJbYzpA9dtqk2cMLdsiNyf6UrJjtajgwfaE+IXACWgZog9J7T/r9qU8RxREfz5EKjZWztJOkwNPaOtCOP8eu4dWyMCADCuJE9OxAnsYoTyhzCfvQTEhCL0BWyKPDfpB3hpymZMldgDXsC5G2Yj5zTSQ5xjmYC2z65RoSAepgD3JpTwFxsXftoQRnYKB2HU+piSfarSvcMt/xAVBGUkpEgjKenWSpEeo70M4Jy5Ys3/HRWUKhy6kqS3lkEyZgt1ihy2qtq2I49xNGYbVGyxaCocoGkQPTt9amWEyrrtQ/FXcigklR17gaebY7EioWP5ls2/gR7h6dB+b6/kDTUznBhVdNmpP4ZyMajGLgHrXLFYhEWXYKvqYH+ftVacd51xkfw/CtToABnYE+raf9NEcBgrt0h3ZmP8zmT8p29hSh9o6g0W0j2hNjVOYV4hxJHYeECTsDG+2oHy60p89Iy4K5P43SflcUj5eUCmnMtphJkqNT+i/v8qUftBx6fdSjEhnZcojU5WDGB2GmvqO4oymnPhxKbo2f3gk+Rm9p35IQXOFm23w+K9s+zEEx/jNVFxLxM5Vx5lYoQNgVMGPmKt77MULYUKdjiHYeoCJ/+2nyrpx3gWHdme4i6sxnY6k9RV/xDOuFtRF71F9NjLige0pWTWU63+V8MWMPcGvcf0rKk+34vf8ACO+yvFS1iHJi0CD6b9t+lG+H8KuOALzwCdTGZhJ1Mzqfea62LarlygDoY9f86KWCa6OTrW/l2kq4R3hnF8M+7v4ebMIBDfzCN9NK62mFSSTewqt+Owcp9UOx+W3yqLg7cnvULcxoMNYUTTPgbIFmP53n5KP6ml7BWzIpssiAqxsv66/0p2MQGM1S3BrXE3wBUxhpUS5hZ3phgwcXJIPatMTZu/droVgHe4IMQAN9N+hqZctAVviHi0nqzH9BQ1NuI68syIu3WfrA0H7n61IPDUw9uLagMxAXrLHQT1gbnsAT0pgLa1DwuEbEYhsgJWwMvp4jAFiZ2KoQBrr4jVgUCeLGacKwaIDZ6OpEnq28n1mfzoFxHhnj2rlkSC4jRZIg9APUVvzrxtsJdW3ZKM663CQSAeirqJI6k+3Q0Dw32g8Rg+G4A3OSxbge/k+prxE9cOcr8h4mxbKlS2YzqAo/JjNH15Tv/wAoHs4/rSSn2h8S/wB8D6eFa/ZJolgftNxX4jaJG4dIB9mSCD2kEetDpE2zGNuXsQv4CfaD+hrVrbKfOpB9RTNydzLaxtosvkur8duZK7wdhIMdPajr2J00IrdHpPaohIRG9bWyQwbsZqc9/DXnIGVYLDKpVWGWQWYv5d4IUdJJJPloZwu9ZxF67as3Sy2gpzxo0khgNdQNPMIGug6kCI7wno2OOY1+Ki2iUCwTPu56+umvpFAeKXQq10fHW1OSRA0WNqBcyYgxC6sxyqB1JMAfM1OxNVcdiSjEnmkl1YiCAQImCfbuN/yoBiOHvqzaCAJjqRoCf3q0+NcrxbsKoZjalbgiQSGDZvTzZyB6+8huaOG5baAW38NWHiBN5KwPiI6ndttKBWcELRmsytvGPknjRxFlCxm/aAS4DuQfhZh/eyz7ho2pnVQWlV1mYO0xv9SfeqebH3bGNOItDRlJAB8rjQkMRvJETGhAI2q0eF8RXEW1uKCjEAlTuJ6HuK6Ixo9axZEkYkcSNzJiJuKinRFOY9y0DWlXH3QDTNxdQFiPMW1PelTjK5QSak6zdhLek2WCbbG5iLcKWCsHIB6KQf1j86sO3jWyAJbYe4pU5CwYfPeO7GB6KP6n9BVgW4UakACqcCaUk3UPqaAGtt2MzJnvVVc345r+IeJK2/4ajuQfMR6lpHsFq2eK8as2g9x28q6+/YDuSdAPWlHk7k1mZcRivKJzJbO5O4LDcnqF6dddBL8Ips2TO+9bCD1N6VUfWOPLnC1s20tiMlpMpI/E0y7exaT/AJVXfNXMR8S4VEqjMYOxAY6ad9qs/FX4UgLlVRJLmNO8AH6xVHcyMMjkCMzE69i0/vVnU41yVq33uBjcpdRtxvJdrEN46m4q3ArBQ2glRtWUy8DacPY/+JP+0VlLqbcrAPIgUSw7ERNQsBhiaYMFgxQkTLhPl58rwfgcFH9jsfkan4bhhViD0MVvgMPoNKL5SGUwSW006t0/MfpW6dt54neb2EC/vRbA4oP/ABF0Q7EyJG2gOv0rjh8Nl+KM0SR0X+p+nvUhSJI2gb965uf4ouM6UF+/aPTpi27STc4iiiArN66D9dfpUNuM2p8wZekkSP8Apk/SoWKxiW80mSem8e3ahF3iIMgLod/Wox8Uz3e34SodGpEZLzKVzKQViZBkR71ExWIVltKmZ/KTKI7jU/zKpX60s2r+VgQAQDOUiQfXXZh0Ya0+4fjVn7ub5OREXzzJKx02lvTvPfSux0vWLmFcH0kefpmx79oHdrFm0968zSilhbKOhcgSAuYAsSdIX86nWQ2CwBLR4qI1x9ZButLN7qHaB/dAFKHEOecNjblmwquLaXDeuK4UeILQm2oAYyDcKsQY0tmgfMHM15lKPnNvULqNugdtSx9IM9SdzUTXESqgnc1AWNsG4TfvBjb1IBJl9TuegJ0nqdu4G8R4y7CJCW10CLoq6dhu3WdT9TWt7jjFBZdcwViUBYpAMDL1nRVgkqdxMRDLyRyxZvXDexpRQP8A08OxCZgdiQdkjXSZBBliZrSRNTGzcCV5exQJ3NEuG4guJPeKsPnLlXhihbdm1lxFz4UtOWCjozDWSdIXufz25c+zFkKnEsSoAL27JUspPRyWkD/gBJ9Ky72EJsTCieDCP2PYRzcu3QCEVcmboWJBgewEn/iFW1ND+CJYFlBhwotR5cogbmd9ZmZnWZmpOLxS20Z2MKokmJ/IDUk7ADUmBRjYRVG6lOcVw5KXQQQxDEgjUE66ipfKvBls21xBdvEuWyCumVQWGnqfID21FPWLx6XVIu2rRgaobkuoOm2QdTEqxG+ppWxV9QMo0A0gdKgyroncPWnMgSq9e8g4lpMk1y4ZfW7iVzsuW0C/muC3mIHlCt/MCc3/AC1C4njIECJOg1jfuelA+aruFCLbsRcuWx/FvSYdpEhATGUawY109yvGN7gLj1nSbA9fSWPwfj9q/fuWUbOETN4n8xzAEAgLmXUQcq/PQ0WfBqZ2IPQ1WP2fYS4+JDqp8NQVuPsBI0HqZCmO2tWx92B2q7G7EXIerxJjel9Im8R5cu+MroEZRuJ1IkdwBt60R4jfFpVAS4AqlyURtcogICBqTPw0z2sCa3bCkbj51r6mUji+8mBo3K24HzDdxFlLt4JOsZQdRMSZO+kf+aB8043MpA260S4jii9136MxI9iTH0ofw7hX3u46kkW7cZmHVidFHyBJ7ad6jFvk3nSNJjuEOD8Ww1i2qtibQIAHldTqBrsam3eO3LiZsOj3lOgKANr7k5V+evpS1ivs9vD4bisPVYP6xQrD8LxuCveJbF231ZlWUYDo0ZlO+zV1Ww43pQx3+n5zmeIw8xEsTg3L95mW/iMpuDVFPwWv+EfiePxmI6CN2YXcvw+ZtpgH/tE/LQe1AOI8xX0tBrVuxfJygQSCxI/CqhpkzppoJ11hA4zzpj7sqz+AuxWypX/qMsPkRTMGAEUtACLfJvZjFzdzDN5MGjGWM3e4hSwUxsSQDl6DeZELPFuDi6CMxWDod9u/zP0oXy/wy615bwU+EkksfxHKR5erGTvtvrTkcHpHYfXrUvUUr0DxGJuN438DweXD2FmYtIP+kV7RLhS/wbX/AMaf9orysqZcq7h+BbSNu39P6Uz8Pw47Qe1Zg8MANqJ2rY/10rAJ4md8PaijFizk1I836Vw4dayjxGg9EHc9SfQfr7V2ViT6muN8T6oj+Gh+f7SzpsV+YzFbzNPofp/ka43VuXAfD0H8x6+39a44t8zhUkgfER26/X96ZbOCGQFSCAOnT5VyMWFnuhdSt3CUTK+4lgr9vUoWHddfpvQy1iA3WrPuW+hFCOIcCs3DJUBu40P0reNjGrmB5i9c4I8Agq2k5Tp02qJiuHXLlq5ZQ3bLONY84jqCNyp6/tRu7gb9qSp8Qeu4H79K84djczhXHmnygiCPb+op2DqDjYbX+sHIutTK44NyDiFxHiXL9pUWSLgJMyCNo0IB2JHvTZxblS1bwl17eIuh4+J28NHEAkBTvM9SZggd6ccTbtsAQ0sYAH4jOm41Mf3poDzByvbuAC7aBjY7EexGh9jFd1OsVxzIBioi+JU/BcIl2/aDuttVZSXuTHlYGCepMfrVz8XwGDdXvYkWntkAnEeJ5pAgAKoAAAEKFLE9RMkwRYs+H4NzD2mRR5VCwZ9yZE6agz70ocN5IvYguzMmHhs1uyWzgR/NqfLtr9NZp+q+1x2JEG+oqR39ZI5X4TiGvviMCPCtTFt8RBLESNPLuQYj/KpXM/HcfZRbN5Fw63CVa8hzZl3hTJiZ1gbtJ1JnpjuZ8TgslnF4e1chCtrw3C5gY3UfhJUCIE699drHAbmLjGcRacwm1ZEhQu4On4de+s77Zh7eW/eVM51asgBHY8k/77wxwG5hrdlFVku2kBh7jmUAJJfXy2pdhGU5iJ1cgAQ/9oHxrPh8I7i3be2wvXNcuVjMGMxE5coYsxJGvYNaXDi8bHgoCDm1URlgHNJHqRUrgXFcPcuPZtsEEg6QAx8w22MT671gyk7VEsiqSw3PIvt+8MYrF37SNbv3kvFW8pRAoiOsDU70o4/iwGs0f49wY+Cz23ZmEyCZn/OonJmFwyW/FuvYuu4bOHMi0o6HMBDaiTDTBCkblWgu288HpbA/ARaw+GbG3VsWjLNDXLnS2u8D8tW76D+8y3/s9sRNvEMFVc7C6vlKaycwgqpytrBMa670Ew+DXG45xgVOHsL8TrmEx13310XTftJBvjfAMf4F1VxqXrS63Q/lfyqDDmCfhgwzdtNRTlUAcXGu26qrV7HmNXLRtHD2vBQIhWQo1jvrAkz1Op3NMGHtmkb7OuJJ92IdgvhsRJ0GU+YEnYakjU9K247xR3a4bV7RPg8NyBlUeYkqR1J19hrFM1gKDIHws2QrG5uYbSTIYgHUjL+hYH1qHx3mOy2HPguGNzy6aFR+KQdRppr3npS5hOWD4Qv3MRbRCguMwVnGWAZLFlgR1iBQzi5bDXjZuQeqtsGU7H0PlykdwKFncDcbQlwIW2NkdoI4jf8AwJDXHYKig6liYAj3NOHLXBMPbs20uPcZndvJnNtCwcoxzLlzwV1DMToAF+EGDwHH4IYe2pNh7rPmuZ1Bgs4zakbqmgj+UVwxnOowBfDrat3JLMHDggq9x3VWA/lzkRPc9dcxqqizKXTI5KKKI+k48+4t8Bik+7BUtvbDNbIlGIZhqJmdNwQa34jzfcGGsX7NtA13PmDS2XIwUxBG8zr06daUeY+PXsawe7llRChRAA7d+vWvbPEsIMH4dy2RiVJFs2xBI3Bc7FZJEantEzQ67JoylulAVC62eD/mbnmbEXLge6LdyDOU2kX00dVDqYJ1DT+lNeCTDYy3lt3Llu4onJcy3GXYSDdDFl2Eg9pA2pIw/JfEb1trwUqu622bIzD0HT5xPSak/Zfg7i4+4jqyMtoyrTI86aa07GzqOZD1fgv91aI7/wCBHw8BZUVLeXKsCJIMDbf1A3NRL9ooVDK2ZjCqBJY9ljcxr2A1MCmP7yCzoiu5tkK+UCASoaNSJ0YUlc68Qxdm9avoj20QFAxggljJUgE6EKN+x7VjbbxGHCXYKY1Yb+1FVQi4QKBoLj3M4H97ICs+xIrKT7P2htAzrcLdcruB8grgAfKe5JknKLxF9Y77Jm/oEYrNEMMJIHc/lQDF4plCrbjxLhypIkDqWIG4USY6mB1ovw3Cm1OZ7jEwPOR+cAACfb8qR1efwsZPftI8OPW9Q1cvSdNABAHYD/X5zWX8V4dsn8T6D0XY/MnT5GotjzMBMT17dz8hrXEXfGvyPhXQDsBt9NfevmAxNseZ1Qg47CHuXcGACznWJ+f+VTbilDKkj1H+tqn8PRcihdRH59/rWuJwhAJXUdVP7V1G6NhiUpyN7HMiOa3Nzjb4gDo6/MfuK9fDK2qMD7f0oZeEe3+t65eJUJ6kny5Vv34MaMXdTUmXrTLuKiXsMj7iulvFuOsj11rfx1bcQe4/pSToP3T+P7xo1DmCzgHQyjbbDtUw8YK6MvSJOxPr2E1IA7EH2/pWjoraEVi5GTiaabmcrOEt3VJaMxkwuw7CP3ofjeCMmoIZZH5zpHWZ7VN+6FZyHLIgxUY3LisCwLBdtf271UnVlQK5gaLMWsdwayb3i37JuPEEuznpHfQgdf8AKpuA4aig+FdveEwK+E7h1WYJKkiR+c/SmgYu1c0cAnsdxQG/cTxHVFcW1IlspygwS2vsB+Yro4Oq1mjU95uP/IF4Ty6uNv3r2JEWbMWlVSRmIEsxI6AEfn6UxYTkfh4U5FYAanzsI0nUHUad6VMBz1asWjh2suSt0vmmDIuZxIKnaAPYVvxX7SLb2bwS24u3VylidhqIEAQIJ/xE1ejYwu/MY/S9Sz7Cl+Y49ZM4IhxVlQt4olsstxQQ1x9dIHQmR5m/LrQ37ReFYCxZBFrLiHgIqOde5I6j1gSfnSdy/ZS9dytce22UlHTUhhrqJEyJ6iuXEFv2cT4t4PfCHR7kkMAdM2pMECIJ2NCCKojeN8Jg+pWNelRv5T4DxOxZW5Ye0M+ptOBLDUrJK6fEeo0PyqHzfzDjBaXDX7Qs52l2UyXBbpqdJnrGgGkRU/AfaPZdle/aZGWYKANMqQQSSDlJ1iNwpnShvAWHE8eb2IKi2slUJ6LEIOpPmBMbjNsSKI1wDFrrBLOo24PeN3KPMeBTDJYt3vAcasbi/E2mYzqIMQJMgAdqW/tH4/bLpbs5C51u3EyktOy50AzL1179CCKfMbwnB3i4u2bLKq5jdSFygdGZIgga7nQGQNJpzh1/Dff85DDDI8gRmOUMIBnusz86JrA0mpmDw3YuoN+nz9IzDi3E7FhLZw7FB50drbErIOxB00Y6H+YjbSl3EcUvYpgMRcJFpGKAALsNFEAf6FW1heb8NeuL4d+2qCSxeEJMQF8xnUtmkAR4cSc1VLzXxA4jGX79uPDXy69RGQEDufi9KFloCmuOxZNROrHpPr8zLIXl7BpYRLmHtvksq7XMxRrhM5hbK6u0rtIjMg66JHO/L9q3jFs2ARNksQWJhvNlEtsNF37ml/CY+5bM27joT1ViP0qdwFruIxoVnZnuqELsZIBKgtJ3IQGPYVgcNtULL02TGCxewY88B5Pw74e013DMWZFbOtwjMGVWkguAILFYAPwilfn3l+1gblh7L3MzEnzNOXKVgqQAdyfypx/2INo5cNjr9k/FlPmkT1ylRv6Gq95wTEviDYu3TeezoG20MRHqSw0o2FCiKiMTlmJD6hzUauEc+WrlvLigRcUSt1RIzDUMUkANIGo31GgJrbhfMF7F4xLtnDHw0VkdwACykHKHZmygBsrBZJEGJmk//ZLHAf8A213/AAz9KZeB80XLFv7peTwPKQj5GVkLbFlEMdTMjzGI6yBVjdMYzLgTSzYgCfS/0EzAcfu4LFYj75auBb7F4XXqcpQyAQFMSD0HatuJ864a9hr1lxfdrikhmVdG/Ds+iqQsQJgaySSSXO3NWC8FrMLiWM5ROYITsc+8j0JJ2JFJ3LnJGIxK5zFq2R5WYHzdso3I9dvfaiJINA3FoqEB8i6SPf04inmPr+VZT/8A2Jj7X8P7nauR+PynNOsyTPXrWUuj6RviD+ofjGngKKXuX40E27c7hUYhz6FnU6dkSpbX5OtZWVzfijHyyHogLM1u4nKpI7R8jvUrgawmY7trWVlcduJefuxo4Ni4OQ9dvemG29ZWV9D8McnELnJ6hRqg3iuCBGYaUvXZBg71lZUHxTEoexH9KxI3mouVuHrKyuTKpuGrot2srK9MnQPW0zWVleEyRr+CVunzqIEuW4OaVG/esrKYvM0SluacQWxd5iIzXGIHoSYoX4lZWV9GvAnWxOdFRh5MsQxuN1lV9O5/am7CDM2tZWUf809pATaLfNGJtpi0VLFt5AVlYQGLHuIIPrRHi/AMCtl7ltLtq6okIrypOnVpMfMbVlZRSYjzDf0ic3MWJ8FrRvXMhEFSxI06DXQVaH2bcIS3g85RGe8STmEiFYrGx6hj8x2rKynYuZD1jEJt7SPzrw3B/cmvrh0t3c/hqV0hlcq3wwCMqOQSB00B0pU5Y5KuYqybqXFSTAVphoAJmAY/188rK8yjXF4s7rhDXZvv9JrxHkvF2SodFhiArBxBJIA9eo3FSOXuXMcl1zbRVvWcjQzKdGFwRpIM++ke1ZWUtVFy1uoZsdmHL3NmNwzlsVhkLFQvlcDRSx6MwnzHp27VXvFOLtexNy7t4rf4RmBAHtAHyrKytJJJub4aKoZRRJlz8N41auqHGJuSfiTIsA7lZ8KYBkSD8+tJP2uIhazdU6wUO+wMr/3n8qyspx3XeQYkCZjXvEzgnCbuKuhLUTqdTER1pz4fzTdw84TGq0AZcykMybQDqQ67adpGo0ryspIJHEtCjISjbirjWmOtwMoskEAgrnQGRMhfDOWd4k1lZWVTqM5fgLP/2Q==',
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: true,
                                            tag: 'surfLesson',
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: 'surfLesson',
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          width: double.infinity,
                                          height: 400.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.00, 1.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 12.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 4.0,
                                            sigmaY: 4.0,
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: 110.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 5.0,
                                                  color: Color(0x28000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Custo do projeto',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall,
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '1.234.034,45',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displaySmall,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Recomendação da comunidade',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        size: 24.0,
                                                      ),
                                                      Text(
                                                        '5.0',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'blurOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Como será investido',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 16.0, 0.0),
                                      child: Text(
                                        'O investimento será para a construção do local, a qual inclui infra estrutura e toda a decoração interna. ',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Data final: 24/12/2023',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Doação por voto: 1 NTN-F',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Color(0x28000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Dashboard');
                                },
                                text: 'Voto sim',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF93CD85),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Dashboard');
                                },
                                text: 'Voto não',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFEC863A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation2']!),
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
