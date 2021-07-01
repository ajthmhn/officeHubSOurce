import 'package:flutter/material.dart';
import 'package:mealup/screen_animation_utils/transitions.dart';
import 'package:mealup/screens/dashboard_screen.dart';
import 'package:mealup/utils/SharedPreferenceUtil.dart';
import 'package:mealup/utils/constants.dart';
import 'package:mealup/utils/localization/language/languages.dart';
import 'package:mealup/utils/preference_utils.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'intro_screen2.dart';

class IntroScreen1 extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    if(SharedPreferenceUtil.getString(Constants.appPush_oneSingleToken).isEmpty){
      print('in=================================');

   //   getOneSingleToken(SharedPreferenceUtil.getString(Constants.appSettingCustomerAppId));
    }

    return SafeArea(
      child: Scaffold(
        body:
        Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/ic_background_image.png'),
    fit: BoxFit.cover,)
    ),
    alignment: Alignment.center,
    child:
    Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Hero(
                    tag: 'App_logo',
                    child: Image.asset('images/ic_intro_logo.png',
                      width: 140.0,
                      height: 40,),
                  ),
                ),
                Image.asset('images/ic_intro1.png'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          Languages.of(context).labelScreenIntro1Line1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: Constants.app_font,
                            color: Color(Constants.color_black),
                            fontSize: 25.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            Languages.of(context).labelScreenIntro1Line2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(Constants.color_gray),
                                fontFamily: Constants.app_font,
                                fontSize: 16.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width: 10.0, height: 0.0),
                    InkWell(
                      onTap: (){
                        PreferenceUtils.setisIntroDone("isIntroDone", true);
                        Navigator.of(context).pushAndRemoveUntil(
                            Transitions(
                              transitionType: TransitionType.fade,
                              curve: Curves.bounceInOut,
                              reverseCurve: Curves.fastLinearToSlowEaseIn,
                              widget: DashboardScreen(0),
                            ),
                                (Route<dynamic> route) => false);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          Languages.of(context).labelSkip,
                          style: TextStyle(
                              letterSpacing: 3.0,
                              color: Color(Constants.color_theme),
                              fontFamily: Constants.app_font_bold,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_downward,
                        color: Color(Constants.color_theme),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            Transitions(
                                transitionType: TransitionType.slideUp,
                                curve: Curves.bounceInOut,
                                reverseCurve: Curves.fastLinearToSlowEaseIn,
                                widget: IntroScreen2())
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),),
      ),
    );
  }

  // getOneSingleToken(String appId) async {
  //   String userId = '';
  //   OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  //   var settings = {
  //     OSiOSSettings.autoPrompt: false,
  //     OSiOSSettings.promptBeforeOpeningPushUrl: true
  //   };

  //   await OneSignal.shared.init(appId, iOSSettings: settings);

  //   OneSignal.shared
  //       .setInFocusDisplayType(OSNotificationDisplayType.notification);
  //   var status = await OneSignal.shared.getPermissionSubscriptionState();
  //   // var pushtoken = await status.subscriptionStatus.pushToken;
  //   userId = await status.subscriptionStatus.userId;
  //   print("pushtoken1:$userId");
  //   SharedPreferenceUtil.putString(Constants.appPush_oneSingleToken, userId);

  //   if(SharedPreferenceUtil.getString(Constants.appPush_oneSingleToken).isEmpty){
  //     getOneSingleToken(SharedPreferenceUtil.getString(Constants.appSettingCustomerAppId));
  //   }
  // }
}
