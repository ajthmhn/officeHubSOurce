import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class LocationData extends StatelessWidget {
  final String location;

  const LocationData({Key key, this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {


    dynamic screenHeight = MediaQuery.of(context).size.height;
    dynamic screenwidth = MediaQuery.of(context).size.width;

    double defaultScreenWidth = screenwidth;
    double defaultScreenHeight = screenHeight;

    ScreenUtil.init(context,designSize: Size(defaultScreenWidth, defaultScreenHeight) ,allowFontScaling: true);

    return new Container(
        color: Colors.white,

        child: Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.all(10.0),
          width: screenwidth,

          child: Container(
            child:   Container(

              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(left: 1, top:00 ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenwidth * .1,
                    alignment:FractionalOffset.topLeft,
                    margin: EdgeInsets.only(top: 5),
                    child: Icon(Icons.location_searching,size: 25,


                    ),
                  ),
                  Container(
                    //height: 35,
                    alignment:FractionalOffset.topLeft,

                    width: screenwidth * .53,
                    transform: Matrix4.translationValues(0.0, 5.0, 0.0),
                    
                    child: Column(
                      children: [
                        Text(
                          'Vishwashanti marg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'Montserrat'),
                        ),

                        Text(
                          'Pune, Maharastra, india',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              fontFamily: 'Montserrat'),
                        ),



                      ],

                    ),
                  ),

                  Container(

                      width: screenwidth * .2,
                      margin: EdgeInsets.only(right: 5),
                      transform: Matrix4.translationValues(5.0, -10.0, 0.0),

                    child: Text("0.5 km" ,style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        fontFamily: 'Montserrat'),
                  ),
                  ),
                ],
              ),
            ),
            // color: this.imageURL,
          ),
        )
      // ],

    );
  }


}
