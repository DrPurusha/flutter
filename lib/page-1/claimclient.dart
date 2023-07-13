import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:flutter/material.dart';
import 'a4-1.dart';
import 'package:myapp/page-1/a4-1.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'your_data_grid_page.dart';

void _showAddFormDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: SingleChildScrollView(
          // Wrap the AddForm widget with a SingleChildScrollView widget
          child: Transform.scale(
            // Wrap the AddForm widget with a Transform.scale widget
            scale: 0.8, // Scale down by 20%
            child: AddForm(),
          ),
        ),
        insetPadding: EdgeInsets.all(10), // 10 pixels padding around the dialog
      );
    },
  );
}

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      width: double.infinity,
      child: Container(
        // claimclientNyf (1:479)
        width: double.infinity,
        height: 1024 * fem,
        decoration: BoxDecoration(
          color: Color(0x33f1f1f1),
        ),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100 * fem,
              sigmaY: 100 * fem,
            ),
            child: Stack(
              children: [
                Positioned(
                  // sidemenuZRs (1:480)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        10 * fem, 15 * fem, 0 * fem, 15 * fem),
                    width: 242 * fem,
                    height: 1024 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // top24Z (I1:480;2048:3190)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 10 * fem, 11 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0.5 * fem, 20 * fem, 0.5 * fem, 16.8 * fem),
                          width: 219 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // mrtylogoguo (I1:480;2048:3191)
                                margin: EdgeInsets.fromLTRB(
                                    58 * fem, 0 * fem, 58 * fem, 30 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // smalllogopurple1FrR (I1:480;2048:3823)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                      width: 50 * fem,
                                      height: 50 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/small-logo-purple-1-8dX.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      // mrtyACh (I1:480;2048:3192)
                                      'Mrty',
                                      style: SafeGoogleFont(
                                        'Noto Sans',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 0.8888888889 * ffem / fem,
                                        color: Color(0xff7d00a7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // compnaylogofQM (I1:480;2231:24215;2081:9061)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                width: 150 * fem,
                                height: 49 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/compnaylogo.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // dashboardmyB (I1:480;2231:24129)
                                padding: EdgeInsets.fromLTRB(
                                    17.5 * fem, 20 * fem, 17.5 * fem, 0 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // mainnav6Em (I1:480;2048:3193)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 144 * fem),
                                      width: double.infinity,
                                      height: 445.2 * fem,
                                      child: Container(
                                        // dashboardspwT (I1:480;2048:3194)
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // menubtnprimaryfreeLeu (I1:480;2051:3844)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  20 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  24 * fem,
                                                  13.8 * fem,
                                                  38 * fem,
                                                  13.8 * fem),
                                              width: double.infinity,
                                              height: 51.6 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10 * fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x0f000000),
                                                    offset: Offset(
                                                        5 * fem, 5 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                  BoxShadow(
                                                    color: Color(0x66ffffff),
                                                    offset: Offset(
                                                        -4 * fem, -4 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                ],
                                              ),
                                              child: Container(
                                                // linkmVK (I1:480;2051:3844;2051:3837)
                                                width: double.infinity,
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // iconWxh (I1:480;2051:3844;2051:3838)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              16 * fem,
                                                              0 * fem),
                                                      width: 14 * fem,
                                                      height: 14 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/icon-tss.png',
                                                        width: 14 * fem,
                                                        height: 14 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardowo (I1:480;2051:3844;2051:3843)
                                                      'Dashboard',
                                                      style: SafeGoogleFont(
                                                        'Helvetica Now Display',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        letterSpacing:
                                                            1.6 * fem,
                                                        color:
                                                            Color(0xff7d00a7),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // menubtnprimaryfreevWd (I1:480;2053:3203)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  20 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  27 * fem,
                                                  10.8 * fem,
                                                  27 * fem,
                                                  10.8 * fem),
                                              width: double.infinity,
                                              height: 45.6 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10 * fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x0f000000),
                                                    offset: Offset(
                                                        5 * fem, 5 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                  BoxShadow(
                                                    color: Color(0x66ffffff),
                                                    offset: Offset(
                                                        -4 * fem, -4 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                ],
                                              ),
                                              child: Container(
                                                // linkAvm (I1:480;2053:3204)
                                                width: 87.11 * fem,
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // iconiSV (I1:480;2053:3211)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              15 * fem,
                                                              0 * fem),
                                                      width: 12.11 * fem,
                                                      height: 11.23 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/icon.png',
                                                        width: 12.11 * fem,
                                                        height: 11.23 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // clientsDu3 (I1:480;2053:3210)
                                                      'Clients',
                                                      style: SafeGoogleFont(
                                                        'Helvetica Now Display',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        letterSpacing:
                                                            1.6 * fem,
                                                        color:
                                                            Color(0xff7d00a7),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // menubtnprimaryfree9nh (I1:480;2055:3185)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  20 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  27.5 * fem,
                                                  10.8 * fem,
                                                  27.5 * fem,
                                                  10.8 * fem),
                                              width: double.infinity,
                                              height: 45.6 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10 * fem),
                                              ),
                                              child: Container(
                                                // linkToP (I1:480;2055:3186)
                                                width: 85.5 * fem,
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // paperPh3 (I1:480;2231:24216)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              4.5 * fem,
                                                              12.5 * fem,
                                                              4.5 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              1.5 * fem,
                                                              2.5 * fem,
                                                              1.5 * fem,
                                                              2.5 * fem),
                                                      width: 15 * fem,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                            'assets/page-1/images/vector-57.png',
                                                          ),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        '\$',
                                                        style: SafeGoogleFont(
                                                          'Helvetica Now Display',
                                                          fontSize: 5 * ffem,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height:
                                                              1 * ffem / fem,
                                                          letterSpacing:
                                                              0.5 * fem,
                                                          color:
                                                              Color(0xff7d00a7),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // claimspXT (I1:480;2055:3199)
                                                      'Claims',
                                                      style: SafeGoogleFont(
                                                        'Helvetica Now Display',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        letterSpacing:
                                                            1.6 * fem,
                                                        color:
                                                            Color(0xff7d00a7),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // menubtnprimaryfreexdf (I1:480;2055:3205)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  20 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  29.58 * fem,
                                                  10.8 * fem,
                                                  29.58 * fem,
                                                  10.8 * fem),
                                              width: double.infinity,
                                              height: 45.6 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10 * fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x0f000000),
                                                    offset: Offset(
                                                        5 * fem, 5 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                  BoxShadow(
                                                    color: Color(0x66ffffff),
                                                    offset: Offset(
                                                        -4 * fem, -4 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                ],
                                              ),
                                              child: Container(
                                                // linkpQy (I1:480;2055:3206)
                                                width: 93.42 * fem,
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // filedocklightMvh (I1:480;2231:24217)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              14.58 * fem,
                                                              0 * fem),
                                                      width: 10.83 * fem,
                                                      height: 14.17 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/filedocklight.png',
                                                        width: 10.83 * fem,
                                                        height: 14.17 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // policies4KK (I1:480;2055:3208)
                                                      'Policies',
                                                      style: SafeGoogleFont(
                                                        'Helvetica Now Display',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        letterSpacing:
                                                            1.6 * fem,
                                                        color:
                                                            Color(0xff7d00a7),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // menubtnprimaryfreeAt9 (I1:480;2055:3211)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  20 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  27.25 * fem,
                                                  10.8 * fem,
                                                  58 * fem,
                                                  10.8 * fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10 * fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x0f000000),
                                                    offset: Offset(
                                                        5 * fem, 5 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                  BoxShadow(
                                                    color: Color(0x66ffffff),
                                                    offset: Offset(
                                                        -4 * fem, -4 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // settingaltfillDLd (I1:480;2231:24218)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        10.25 * fem,
                                                        0 * fem),
                                                    width: 15.49 * fem,
                                                    height: 17.36 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/settingaltfill.png',
                                                      width: 15.49 * fem,
                                                      height: 17.36 * fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // servicesiYH (I1:480;2055:3214)
                                                    'Services',
                                                    style: SafeGoogleFont(
                                                      'Helvetica Now Display',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.5 * ffem / fem,
                                                      letterSpacing: 1.6 * fem,
                                                      color: Color(0xff7d00a7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // menubtnprimaryfreeFHK (I1:480;2055:3277)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  20 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  29.5 * fem,
                                                  10.8 * fem,
                                                  91 * fem,
                                                  10.8 * fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10 * fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x0f000000),
                                                    offset: Offset(
                                                        5 * fem, 5 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                  BoxShadow(
                                                    color: Color(0x66ffffff),
                                                    offset: Offset(
                                                        -4 * fem, -4 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // commentlightgtR (I1:480;2231:24219)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.96 * fem,
                                                        9.5 * fem,
                                                        0 * fem),
                                                    width: 13 * fem,
                                                    height: 12.56 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/commentlight.png',
                                                      width: 13 * fem,
                                                      height: 12.56 * fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // chatysX (I1:480;2055:3280)
                                                    'Chat',
                                                    style: SafeGoogleFont(
                                                      'Helvetica Now Display',
                                                      fontSize: 16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.5 * ffem / fem,
                                                      letterSpacing: 1.6 * fem,
                                                      color: Color(0xff7d00a7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // menubtnprimaryfreeKRb (I1:480;2311:28210)
                                              padding: EdgeInsets.fromLTRB(
                                                  28 * fem,
                                                  10.8 * fem,
                                                  28 * fem,
                                                  10.8 * fem),
                                              width: double.infinity,
                                              height: 45.6 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10 * fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x0f000000),
                                                    offset: Offset(
                                                        5 * fem, 5 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                  BoxShadow(
                                                    color: Color(0x66ffffff),
                                                    offset: Offset(
                                                        -4 * fem, -4 * fem),
                                                    blurRadius: 5 * fem,
                                                  ),
                                                ],
                                              ),
                                              child: Container(
                                                // linkb8D (I1:480;2311:28212)
                                                width: 81 * fem,
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // cloudaltY3T (I1:480;2311:28865)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              13 * fem,
                                                              0 * fem),
                                                      width: 18 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/cloudalt.png',
                                                        width: 18 * fem,
                                                        height: 12 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // cloudTAR (I1:480;2311:28213)
                                                      'Cloud',
                                                      style: SafeGoogleFont(
                                                        'Helvetica Now Display',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        letterSpacing:
                                                            1.6 * fem,
                                                        color:
                                                            Color(0xff7d00a7),
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
                                    Container(
                                      // menubtnprimaryfreenCh (I1:480;2081:11986)
                                      padding: EdgeInsets.fromLTRB(26.67 * fem,
                                          10 * fem, 59 * fem, 10 * fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x0f000000),
                                            offset: Offset(5 * fem, 5 * fem),
                                            blurRadius: 5 * fem,
                                          ),
                                          BoxShadow(
                                            color: Color(0x66ffffff),
                                            offset: Offset(-4 * fem, -4 * fem),
                                            blurRadius: 5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // settinglinelight4R7 (I1:480;2081:11987)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 9.67 * fem, 0 * fem),
                                            width: 16.67 * fem,
                                            height: 16.67 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/settinglinelight.png',
                                              width: 16.67 * fem,
                                              height: 16.67 * fem,
                                            ),
                                          ),
                                          Text(
                                            // settingsNgh (I1:480;2081:11989)
                                            'Settings',
                                            style: SafeGoogleFont(
                                              'Helvetica Now Display',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5 * ffem / fem,
                                              letterSpacing: 1.6 * fem,
                                              color: Color(0xff7d00a7),
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
                        Container(
                          // needhelp7PP (I1:480;2048:3243)
                          padding: EdgeInsets.fromLTRB(
                              16 * fem, 24 * fem, 0 * fem, 16 * fem),
                          width: 235 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff7d00a7),
                            borderRadius: BorderRadius.circular(8 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // iconcqw (I1:480;2048:3244)
                                margin: EdgeInsets.fromLTRB(
                                    8 * fem, 0 * fem, 0 * fem, 16 * fem),
                                width: 14 * fem,
                                height: 14 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/icon-STs.png',
                                  width: 14 * fem,
                                  height: 14 * fem,
                                ),
                              ),
                              Container(
                                // textjQm (I1:480;2048:3247)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // needhelp4T3 (I1:480;2048:3248)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                      child: Text(
                                        'Need help?',
                                        style: SafeGoogleFont(
                                          'Noto Sans',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.625 * ffem / fem,
                                          letterSpacing: -0.8000000119 * fem,
                                          color: Color(0xfff1f1f1),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // pleasecheckourdocsMBF (I1:480;2048:3249)
                                      'Please check our docs',
                                      style: SafeGoogleFont(
                                        'Noto Sans',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // buttontertiaryUmf (I1:480;2048:3250)
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // readpost22V (I1:480;2048:3251)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                      child: Text(
                                        'Documentation',
                                        style: SafeGoogleFont(
                                          'Noto Sans',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // arrowrightlongwfF (I1:480;2048:3252)
                                      'arrow-right-long',
                                      style: SafeGoogleFont(
                                        'Font Awesome 6 Free',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xffffffff),
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
                Positioned(
                  // dashU9P (1:481)
                  left: 242 * fem,
                  top: 13.4986572266 * fem,
                  child: Container(
                    width: 1214 * fem,
                    height: 997 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // headernfs (1:482)
                          padding: EdgeInsets.fromLTRB(
                              20 * fem, 10 * fem, 0 * fem, 10 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Column(
                            children: [
                              Container(
                                // topmenusecondary3VK (1:483)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 44 * fem, 10 * fem),
                                width: double.infinity,
                                height: 40 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // breadcrumbsjsw (1:486)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 614 * fem, 0 * fem),
                                      height: 21 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupmewzEJu (XiBukmZDouCc32jrQ7MEWZ)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 1 * fem, 0 * fem),
                                            width: 116 * fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // claims5aR (1:487)
                                                  left: 0 * fem,
                                                  top: 0 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 53 * fem,
                                                      height: 21 * fem,
                                                      child: Text(
                                                        'Claims /  ',
                                                        style: SafeGoogleFont(
                                                          'Helvetica Now Display',
                                                          fontSize: 14 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.5 * ffem / fem,
                                                          color:
                                                              Color(0x7f1e293b),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // fileclaimxeD (1:488)
                                                  left: 50 * fem,
                                                  top: 0 * fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 66 * fem,
                                                      height: 21 * fem,
                                                      child: Text(
                                                        'File Claim /',
                                                        style: SafeGoogleFont(
                                                          'Helvetica Now Display',
                                                          fontSize: 14 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              1.5 * ffem / fem,
                                                          color:
                                                              Color(0x7f1e293b),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            // clientsf2q (1:489)
                                            'Clients ',
                                            style: SafeGoogleFont(
                                              'Helvetica Now Display',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff1e293b),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // rightzau (1:490)
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // searchL8y (1:491)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 24 * fem, 0 * fem),
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20 * fem),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // icon33P (1:492)
                                                  width: 40 * fem,
                                                  height: 40 * fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/icon-bhs.png',
                                                    width: 40 * fem,
                                                    height: 40 * fem,
                                                  ),
                                                ),
                                                Container(
                                                  // inputANu (1:495)
                                                  padding: EdgeInsets.fromLTRB(
                                                      4 * fem,
                                                      8 * fem,
                                                      4 * fem,
                                                      11 * fem),
                                                  width: 200 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(
                                                              8 * fem),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Search',
                                                    style: SafeGoogleFont(
                                                      'Helvetica Now Display',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.5 * ffem / fem,
                                                      color: Color(0xff7d00a7),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // iconssolidyLM (1:497)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 24.67 * fem, 0 * fem),
                                            width: 16 * fem,
                                            height: 16 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/icons-solid-GG9.png',
                                              width: 16 * fem,
                                              height: 16 * fem,
                                            ),
                                          ),
                                          Container(
                                            // iconssolidTFX (1:500)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 24.67 * fem, 0 * fem),
                                            width: 14.67 * fem,
                                            height: 16 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/icons-solid.png',
                                              width: 14.67 * fem,
                                              height: 16 * fem,
                                            ),
                                          ),
                                          Container(
                                            // profileavatar8sT (1:504)
                                            width: 32 * fem,
                                            height: 32 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/profile-avatar.png',
                                              width: 32 * fem,
                                              height: 32 * fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // heading4FK (1:507)
                                width: double.infinity,
                                height: 74 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // titleBqj (1:508)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 577 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titleiam (1:509)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 7 * fem),
                                            child: Text(
                                              'Clients',
                                              style: SafeGoogleFont(
                                                'Helvetica Now Display',
                                                fontSize: 34 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2575 * ffem / fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // subtitledhj (1:510)
                                            '2019605',
                                            style: SafeGoogleFont(
                                              'Helvetica Now Display',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xffbe00ff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // ctasmZ3 (1:511)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 22 * fem, 0 * fem, 12 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // informationgg1 (1:512)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 16 * fem, 0 * fem),
                                            width: 18 * fem,
                                            height: 18 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/information.png',
                                              width: 18 * fem,
                                              height: 18 * fem,
                                            ),
                                          ),
                                          Container(
                                            // fileclaimbuttonzgh (1:513)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 16 * fem, 0 * fem),
                                            width: 150 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      10 * fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x0f000000),
                                                  offset:
                                                      Offset(5 * fem, 5 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                                BoxShadow(
                                                  color: Color(0x66ffffff),
                                                  offset: Offset(
                                                      -4 * fem, -4 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Center(
                                                child: Text(
                                                  'File Claim',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'Helvetica Now Display',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575 * ffem / fem,
                                                    color: Color(0xff7d00a7),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // buttonsecondary9xu (1:517)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 8 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(
                                                30 * fem,
                                                12 * fem,
                                                53 * fem,
                                                12 * fem),
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      6 * fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x0f000000),
                                                  offset:
                                                      Offset(5 * fem, 5 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                                BoxShadow(
                                                  color: Color(0x66ffffff),
                                                  offset: Offset(
                                                      -4 * fem, -4 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                              ],
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // iconssolidcbb (1:518)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      20 * fem,
                                                      0 * fem),
                                                  width: 8 * fem,
                                                  height: 8 * fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/icons-solid-6z5.png',
                                                    width: 8 * fem,
                                                    height: 8 * fem,
                                                  ),
                                                ),
                                                Text(
                                                  // text8Zw (1:520)
                                                  'Review',
                                                  style: SafeGoogleFont(
                                                    'Helvetica Now Display',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.3333333333 *
                                                        ffem /
                                                        fem,
                                                    color: Color(0xff1e293b),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // buttonprimaryGg9 (1:523)
                                            padding: EdgeInsets.fromLTRB(
                                                24 * fem,
                                                10.5 * fem,
                                                82 * fem,
                                                12.5 * fem),
                                            width: 155 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xff7d00a7),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      6 * fem),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // iconssolidyaZ (1:524)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      2 * fem,
                                                      7 * fem,
                                                      0 * fem),
                                                  width: 14 * fem,
                                                  height: 14 * fem,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // vectorW4h (1:525)
                                                        left:
                                                            2.0999755859 * fem,
                                                        top: 1.3999938965 * fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 9.8 * fem,
                                                            height: 11.2 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector.png',
                                                              width: 9.8 * fem,
                                                              height:
                                                                  11.2 * fem,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // smalllogopurple11GM (1:526)
                                                        left: 0.5 * fem,
                                                        top: 0 * fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 50 * fem,
                                                            height: 50 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/small-logo-purple-1.png',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  // sync865 (1:527)
                                                  'Sync',
                                                  style: SafeGoogleFont(
                                                    'Helvetica Now Display',
                                                    fontSize: 13 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575 * ffem / fem,
                                                    color: Color(0xffffffff),
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
                            ],
                          ),
                        ),
                        Container(
                          // autogroup3dbkTu3 (XiBtTisw8StYT43Pcs3dbK)
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 10 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // navsubbarPXo (1:532)
                                margin: EdgeInsets.fromLTRB(
                                    0.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    19 * fem, 27 * fem, 31 * fem, 27 * fem),
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // buttonsHdB (I1:532;2289:26500)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 16 * fem),
                                      height: 40 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // buttonsecondary1ZB (I1:532;2289:26505)
                                            width: 113 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      6 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Client',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Helvetica Now Display',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      1.3333333333 * ffem / fem,
                                                  color: Color(0xff7d00a7),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 25 * fem,
                                          ),
                                          Container(
                                            // buttonsecondary5ow (I1:532;2350:28485)
                                            width: 113 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      6 * fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x0f000000),
                                                  offset:
                                                      Offset(5 * fem, 5 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                                BoxShadow(
                                                  color: Color(0x66ffffff),
                                                  offset: Offset(
                                                      -4 * fem, -4 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Policies',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Helvetica Now Display',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      1.3333333333 * ffem / fem,
                                                  color: Color(0xff7d00a7),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 25 * fem,
                                          ),
                                          Container(
                                            // buttonsecondaryXA9 (I1:532;2289:26501)
                                            width: 113 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      6 * fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x0f000000),
                                                  offset:
                                                      Offset(5 * fem, 5 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                                BoxShadow(
                                                  color: Color(0x66ffffff),
                                                  offset: Offset(
                                                      -4 * fem, -4 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Assets',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Helvetica Now Display',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      1.3333333333 * ffem / fem,
                                                  color: Color(0xff7d00a7),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 25 * fem,
                                          ),
                                          Container(
                                            // buttonsecondaryq4M (I1:532;2289:26503)
                                            width: 113 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      6 * fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x0f000000),
                                                  offset:
                                                      Offset(5 * fem, 5 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                                BoxShadow(
                                                  color: Color(0x66ffffff),
                                                  offset: Offset(
                                                      -4 * fem, -4 * fem),
                                                  blurRadius: 5 * fem,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Claim Form',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Helvetica Now Display',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      1.3333333333 * ffem / fem,
                                                  color: Color(0xff7d00a7),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group6tHX (I1:532;2289:26511)
                                      width: 1132 * fem,
                                      height: 1 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-6.png',
                                        width: 1132 * fem,
                                        height: 1 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10 * fem,
                              ),
                              Container(
                                // filterbarofP (1:533)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 31 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    19 * fem, 26 * fem, 19 * fem, 27 * fem),
                                width: double.infinity,
                                height: 94 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10 * fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // searchbaruCd (1:534)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 619 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // searchEVo (1:535)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 8 * fem, 0 * fem),
                                            height: 40 * fem,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      10 * fem),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // iconxAu (1:536)
                                                  width: 40 * fem,
                                                  height: 40 * fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/icon-8YR.png',
                                                    width: 40 * fem,
                                                    height: 40 * fem,
                                                  ),
                                                ),
                                                Container(
                                                  // inputh8V (1:539)
                                                  padding: EdgeInsets.fromLTRB(
                                                      4 * fem,
                                                      8 * fem,
                                                      4 * fem,
                                                      11 * fem),
                                                  width: 200 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(
                                                              8 * fem),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Client',
                                                    style: SafeGoogleFont(
                                                      'Helvetica Now Display',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.5 * ffem / fem,
                                                      color: Color(0xff7d00a7),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // brandNEd (1:541)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1 * fem),
                                            width: 166 * fem,
                                            height: 40 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/brand.png',
                                              width: 166 * fem,
                                              height: 40 * fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // addclientgm7 (1:545)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: TextButton(
                                        onPressed: () {
                                          _showAddFormDialog(context);
                                        },
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(5 * fem,
                                              5 * fem, 8.5 * fem, 5 * fem),
                                          width: 112 * fem,
                                          height: 40 * fem,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x0f000000),
                                                offset:
                                                    Offset(5 * fem, 5 * fem),
                                                blurRadius: 5 * fem,
                                              ),
                                              BoxShadow(
                                                color: Color(0x66ffffff),
                                                offset:
                                                    Offset(-4 * fem, -4 * fem),
                                                blurRadius: 5 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Container(
                                            // frame53XFw (1:547)
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // addsquaregPj (1:548)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      4.5 * fem,
                                                      0 * fem),
                                                  width: 30 * fem,
                                                  height: 30 * fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/addsquare.png',
                                                    width: 30 * fem,
                                                    height: 30 * fem,
                                                  ),
                                                ),
                                                Center(
                                                  // addclientCN5 (1:552)
                                                  child: Text(
                                                    'Add Client',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Helvetica Now Display',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height:
                                                          1.2575 * ffem / fem,
                                                      color: Color(0xff7d00a7),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10 * fem,
                              ),
                              Container(
                                  // listiLR (1:553)
                                  padding: EdgeInsets.fromLTRB(
                                      25 * fem, 23 * fem, 34 * fem, 23 * fem),
                                  height: 573 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff1f1f1),
                                    borderRadius:
                                        BorderRadius.circular(10 * fem),
                                  ),
                                  child: YourDataGridPage()),
                              SizedBox(
                                height: 10 * fem,
                              ),
                              Container(
                                // footerLnM (1:576)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 31 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    10 * fem, 10 * fem, 10 * fem, 10 * fem),
                                width: double.infinity,
                                height: 35 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // copyright2023alwaysonlimitedcr (I1:576;2231:24124)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 686 * fem, 0 * fem),
                                      child: Text(
                                        'Copyright © 2023 Always on limited created by MRTY ',
                                        style: SafeGoogleFont(
                                          'Noto Sans',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.25 * ffem / fem,
                                          color: Color(0xff8392ab),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // sidelinksuys (I1:576;2231:24125)
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            // aboutusewT (I1:576;2231:24126)
                                            'About Us',
                                            style: SafeGoogleFont(
                                              'Noto Sans',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.25 * ffem / fem,
                                              color: Color(0xff8392ab),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 28 * fem,
                                          ),
                                          Text(
                                            // blogmmB (I1:576;2231:24127)
                                            'Blog',
                                            style: SafeGoogleFont(
                                              'Noto Sans',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.25 * ffem / fem,
                                              color: Color(0xff8392ab),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 28 * fem,
                                          ),
                                          Text(
                                            // licenseheq (I1:576;2231:24128)
                                            'License',
                                            style: SafeGoogleFont(
                                              'Noto Sans',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.25 * ffem / fem,
                                              color: Color(0xff8392ab),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
