import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealup/utils/constants.dart';
import 'package:rating_bar/rating_bar.dart';

class Explore_Restaurants_List extends StatelessWidget {

  final Function onSaveItem;
  Explore_Restaurants_List({@required this.onSaveItem});


  @override
  Widget build(BuildContext context) {


    dynamic screenHeight = MediaQuery.of(context).size.height;
    dynamic screenwidth = MediaQuery.of(context).size.width;

    double defaultScreenWidth = screenwidth;
    double defaultScreenHeight = screenHeight;

    ScreenUtil.init(context,designSize: Size(defaultScreenWidth, defaultScreenHeight) ,allowFontScaling: true);

    return ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.only(top: ScreenUtil().setWidth(10), right: ScreenUtil().setWidth(5), bottom: ScreenUtil().setHeight(5)),
          child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'images/ic_pizza.jpg',
                  width: ScreenUtil().setWidth(100),
                  height: ScreenUtil().setHeight(100),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: ScreenUtil().setWidth(10), top: ScreenUtil().setHeight(10)),
                              child: Text(
                                'Veg Explorer',
                                style: TextStyle(
                                    fontFamily:
                                    Constants.app_font_bold,
                                    fontSize: ScreenUtil().setSp(16)),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: ScreenUtil().setWidth(10), top: ScreenUtil().setHeight(10)),
                              child: GestureDetector(
                                onTap: onSaveItem,
                                child: SvgPicture.asset(
                                  'images/ic_filled_heart.svg',
                                  color: Color(Constants.color_like),
                                  height: ScreenUtil().setHeight(20),
                                  width: ScreenUtil().setWidth(20),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: ScreenUtil().setWidth(10),right: ScreenUtil().setWidth(40)),
                        child: Text(
                          'Chinese, North Indian',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: Constants.app_font,
                              color: Color(Constants.color_gray),
                              fontSize: ScreenUtil().setSp(12)),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),

                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 3),
                                  child: SvgPicture.asset(
                                    'images/ic_map.svg',
                                    width: ScreenUtil().setWidth(10),
                                    height: ScreenUtil().setHeight(10),
                                  ),
                                ),
                                Text(
                                  '3.2km far away',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(12),
                                    fontFamily: Constants.app_font,
                                    color: Color(0xFF132229),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 3),
                                  child: Row(
                                    children: [
                                      RatingBar.readOnly(
                                        initialRating: 3.5,
                                        size: ScreenUtil().setWidth(12),
                                        isHalfAllowed: true,
                                        halfFilledColor:
                                        Color(0xFFffc107),
                                        halfFilledIcon: Icons.star_half,
                                        filledIcon: Icons.star,
                                        emptyIcon: Icons.star_border,
                                        emptyColor:
                                        Color(Constants.color_gray),
                                        filledColor: Color(0xFFffc107),
                                      ),
                                      Text(
                                        '(998)',
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(12),
                                          fontFamily: Constants.app_font,
                                          color: Color(0xFF132229),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: ScreenUtil().setWidth(15)),
                            child: Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: ScreenUtil().setWidth(2)),
                                    child: SvgPicture.asset(
                                      'images/ic_veg.svg',
                                      height: ScreenUtil().setHeight(10),
                                      width: ScreenUtil().setWidth(10),
                                    ),
                                  ),
                                  Visibility(
                                    visible: true,
                                    child: SvgPicture.asset(
                                      'images/ic_non_veg.svg',
                                      height: ScreenUtil().setHeight(10),
                                      width: ScreenUtil().setWidth(10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }


}