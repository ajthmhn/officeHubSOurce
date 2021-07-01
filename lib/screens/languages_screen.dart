import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealup/utils/app_toolbar.dart';
import 'package:mealup/utils/constants.dart';
import 'package:mealup/utils/localization/language/languages.dart';
import 'package:mealup/utils/localization/locale_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguagesScreen extends StatefulWidget {
  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  List<String> _listLanguages = [];

  int radioindex;

  void changeIndex(int index) {
    setState(() {
      radioindex = index;
    });
  }

  Widget getChecked() {
    return Container(
      width: 25,
      height: 25,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SvgPicture.asset(
          'images/ic_check.svg',
          width: 15,
          height: 15,
        ),
      ),
      decoration: myBoxDecoration_checked(false, Color(Constants.color_theme)),
    );
  }

  Widget getunChecked() {
    return Container(
      width: 25,
      height: 25,
      decoration: myBoxDecoration_checked(true, Colors.white),
    );
  }

  BoxDecoration myBoxDecoration_checked(bool isBorder, Color color) {
    return BoxDecoration(
      color: color,
      border: isBorder ? Border.all(width: 1.0) : null,
      borderRadius: BorderRadius.all(
          Radius.circular(8.0) //                 <--- border radius here
          ),
    );
  }

  @override
  void initState() {
    super.initState();

    getLanguageList();
  }

  @override
  Widget build(BuildContext context) {
    dynamic screenHeight = MediaQuery.of(context).size.height;
    dynamic screenwidth = MediaQuery.of(context).size.width;

    double defaultScreenWidth = screenwidth;
    double defaultScreenHeight = screenHeight;

    ScreenUtil.init(context,
        designSize: Size(defaultScreenWidth, defaultScreenHeight),
        allowFontScaling: true);

    return SafeArea(
      child: Scaffold(
        appBar: ApplicationToolbar(
          appbarTitle: Languages.of(context).labelLanguage,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/ic_background_image.png'),
            fit: BoxFit.cover,
          )),
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: _listLanguages.length,
              itemBuilder: (BuildContext context, int index) => InkWell(
                    onTap: () {
                      changeIndex(index);
                      Navigator.pop(context);
                      String languageCode = '';
                      if (index == 0) {
                        languageCode = 'en';
                      } else {
                        languageCode = 'es';
                      }
                      changeLanguage(context, languageCode);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(20),
                          bottom: ScreenUtil().setHeight(10),
                          top: ScreenUtil().setHeight(20)),
                      child: Row(
                        children: [
                          radioindex == index ? getChecked() : getunChecked(),
                          Padding(
                            padding: EdgeInsets.only(
                                left: ScreenUtil().setWidth(10)),
                            child: Text(
                              _listLanguages[index],
                              style: TextStyle(
                                  fontFamily: Constants.app_font,
                                  fontWeight: FontWeight.w900,
                                  fontSize: ScreenUtil().setSp(14)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }

  Future<void> getLanguageList() async {
    _listLanguages.clear();
    _listLanguages.add('English');
    _listLanguages.add('Spanish');

    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String languageCode = _prefs.getString(prefSelectedLanguageCode);

    setState(() {
      if (languageCode == 'en') {
        radioindex = 0;
      } else if (languageCode == 'es') {
        radioindex = 1;
      } else {
        radioindex = 1;
      }
    });
  }
}
