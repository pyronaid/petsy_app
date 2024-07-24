import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../app_flow/app_flow_animations.dart';
import '../../../app_flow/app_flow_model.dart';
import '../../../app_flow/app_flow_theme.dart';
import '../../../app_flow/app_flow_widgets.dart';
import '../../../backend/firebase_analytics/analytics.dart';
import '../../../components/custom_appbar_widget.dart';
import 'onboarding_slideshow_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smooth_page_indicator;

class OnboardingSlideshowWidget extends StatefulWidget {
  const OnboardingSlideshowWidget({super.key});

   @override
  State<OnboardingSlideshowWidget> createState() => _OnboardingSlideshowWidgetState();
}


class _OnboardingSlideshowWidgetState extends State<OnboardingSlideshowWidget> with TickerProviderStateMixin {
  late OnboardingSlideshowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingSlideshowModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Onboarding_Slideshow'});
    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }


  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.customAppbarModel,
                          updateCallback: () => setState(() {}),
                          child: CustomAppbarWidget(
                            backButton: true,
                            actionButton: false,
                            actionButtonAction: () async {},
                            optionsButtonAction: () async {},
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 500,  //TODO convert percentage 
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                                  child: PageView(
                                    controller: _model.pageViewController ??= PageController(initialPage: 0),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      // FIRST ELEMENT OF CAROUSEL
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                            child: Text(
                                              'Storico sanitario\ndel tuo pet',
                                              textAlign: TextAlign.center,
                                              style: CustomFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0,
                                                      ),

                                            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                            child: Image.asset(
                                              'assets/images/logo_slideshow_1.png',
                                              height: 35.h,
                                              fit: BoxFit.fill,
                                            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation1']!),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                            child: Text(
                                              'Crea lo storico sanitario del tuo "pet" così che il tuo veterinario abbia sempre il contesto di tutto ciò che ha fatto',
                                              textAlign: TextAlign.center,
                                              style: CustomFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
                                          ),
                                        ],
                                      ),
                                      // SECOND ELEMENT OF CAROUSEL
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                            child: Text(
                                              'Foto gallery \nperiodica',
                                              textAlign: TextAlign.center,
                                              style: CustomFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                            child: Image.asset(
                                              'assets/images/logo_slideshow_1.png',
                                              height: 35.h,
                                              fit: BoxFit.contain,
                                            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation2']!),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                            child: Text(
                                              'Carica delle foto cadenzate per vedere come cresce nel tempo.',
                                              textAlign: TextAlign.center,
                                              style: CustomFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation4']!),
                                          ),
                                        ],
                                      ),
                                      // THIRD ELEMENT OF CAROUSEL
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                            child: Text(
                                              'Reminder personalizzati\nper cure e appuntamenti',
                                              textAlign: TextAlign.center,
                                              style: CustomFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation5']!),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                            child: Image.asset(
                                              'assets/images/logo_slideshow_1.png',
                                              height: 35.h,
                                              fit: BoxFit.contain,
                                            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation3']!),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                            child: Text(
                                              'L\'app è il tuo organizer personale per ricordarti delle somministrazioni e degli appuntamenti del veterinario.',
                                              textAlign: TextAlign.center,
                                              style: CustomFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation6']!),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // DOT INDICATOR
                                Align(
                                  alignment: const AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                    child: smooth_page_indicator.SmoothPageIndicator(controller: _model.pageViewController ??= PageController(initialPage: 0),
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await _model.pageViewController!
                                            .animateToPage(i, duration: const Duration(milliseconds: 500), curve: Curves.ease,);
                                        setState(() {});
                                      },
                                      effect: smooth_page_indicator.ExpandingDotsEffect(
                                        expansionFactor: 3,
                                        spacing: 10,
                                        radius: 10,
                                        dotWidth: 10,
                                        dotHeight: 10,
                                        dotColor: CustomFlowTheme.of(context).secondaryText,
                                        activeDotColor: CustomFlowTheme.of(context).primaryText,
                                        paintStyle: PaintingStyle.fill,
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
                ),
              ),
              //BUTTON CONTINUE
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: AFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('ONBOARDING_SLIDESHOW_CONTINUE_BTN_ON_TAP');
                          logFirebaseEvent('Button_haptic_feedback');
                          HapticFeedback.lightImpact();
                          if (_model.pageViewCurrentIndex == 2) {  
                            logFirebaseEvent('Button_navigate_to');
                            context.pushNamed('Onboarding_CreateAccount');
                          } else {
                            logFirebaseEvent('Button_page_view');
                            await _model.pageViewController?.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          }
                        },
                        text: 'Continua',
                        options: AFButtonOptions(
                          width: double.infinity,
                          height: 50,
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: CustomFlowTheme.of(context).primary,
                          textStyle: CustomFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0,
                                  ),
                          elevation: 0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        showLoadingIndicator: false,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
