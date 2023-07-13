import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:http/http.dart' as http;
import 'claimclient.dart';

final _formKey = GlobalKey<FormBuilderState>();
TextEditingController streetLineController = TextEditingController();
TextEditingController FirstNameController = TextEditingController();
TextEditingController LastNameController = TextEditingController();
TextEditingController EmailController = TextEditingController();
TextEditingController PhoneController = TextEditingController();

void resetFormFields() {
  streetLineController.clear();
  FirstNameController.clear();
  LastNameController.clear();
  EmailController.clear();
  PhoneController.clear();
}

@override
void dispose() {
  streetLineController.dispose();
  FirstNameController.dispose();
  LastNameController.dispose();
  EmailController.dispose();
  PhoneController.dispose();
}

class AddForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 757;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    int idclient = 0;
    return Container(
      width: double.infinity,
      child: Container(
        // a41mHb (1:577)
        width: double.infinity,
        height: 842 * fem,
        decoration: BoxDecoration(
          color: Color(0xfff1f1f1),
          borderRadius: BorderRadius.circular(10 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // titleesB (1:578)
              left: 33 * fem,
              top: 20 * fem,
              child: Align(
                child: SizedBox(
                  width: 312 * fem,
                  height: 43 * fem,
                  child: Text(
                    'Create a new contact',
                    style: SafeGoogleFont(
                      'Helvetica Now Display',
                      fontSize: 34 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // closeroundic9 (1:579)
              left: 718 * fem,
              top: 9 * fem,
              child: Align(
                child: SizedBox(
                  width: 30 * fem,
                  height: 30 * fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset(
                      'assets/page-1/images/closeround.png',
                      width: 30 * fem,
                      height: 30 * fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // buttonsecondaryCGR (1:582)
              left: 608 * fem,
              top: 766 * fem,
              child: TextButton(
                onPressed: () async {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Scene()),
                    (route) => false,
                  );

                  // get the values of the input fields
                  idclient += 1;

                  String streetLine = streetLineController.text;
                  String clientName =
                      FirstNameController.text + ' ' + LastNameController.text;
                  String Email = EmailController.text;
                  String Phone = PhoneController.text;
                  String Claims = '0';
                  String NumberOfPolices = '0';
                  String TotalAmountSpent = '0';

                  // convert them to a json object
                  var jsonObject = jsonEncode({
                    'clientId': idclient,
                    'clientName': clientName,
                    'Email': Email,
                    'Phone': Phone,
                    'Claims': Claims,
                    'NumberOfPolices': NumberOfPolices,
                    'TotalAmountSpent': TotalAmountSpent
                  });

                  // print the json object and the values for debugging
                  print(jsonObject);

                  print(streetLine);

                  // send the json object to your backend using a POST request
                  var response = await http.post(
                    Uri.parse(
                        'http://localhost:5000/api/form'), // change this to your backend URL
                    headers: {
                      'Content-Type': 'application/json'
                    }, // specify the content type
                    body: jsonObject, // pass the json object as the body
                  );

                  // check the status code and the response body
                  if (response.statusCode == 200) {
                    // request was successful
                    print('Success: ${response.body}');
                  } else {
                    // request failed
                    print('Error: ${response.statusCode}');
                  }
                  resetFormFields();
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 150 * fem,
                  height: 40 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6 * fem),
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
                  child: Center(
                    child: Text(
                      'SAVE',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Helvetica Now Display',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.3333333333 * ffem / fem,
                        color: Color(0xff7d00a7),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame55bpM (1:586)
              left: 40 * fem,
              top: 110 * fem,
              child: Container(
                width: 681 * fem,
                height: 102 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // nameWgR (1:587)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 7 * fem, 87 * fem, 0 * fem),
                      child: Text(
                        'Name',
                        style: SafeGoogleFont(
                          'Helvetica Now Display',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2575 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // frame54cjT (1:588)
                        width: 544 * fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // inputfieldy4D (1:589)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 12 * fem),
                              child: TextField(
                                controller: FirstNameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(16 * fem,
                                      11.5 * fem, 16 * fem, 14.5 * fem),
                                  filled: true,
                                  fillColor: Color(0xffffffff),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'First Name',
                                  hintStyle: SafeGoogleFont(
                                    'Helvetica Now Display',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575 * ffem / fem,
                                    letterSpacing: 1.5 * fem,
                                    color: Color(0x66323940),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    borderSide: BorderSide.none,
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                style: TextStyle(
                                  // Set the font size here
                                  fontSize: 15 * ffem,
                                ),
                              ),
                            ),
                            TextField(
                              controller: LastNameController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(
                                    16 * fem, 11.5 * fem, 16 * fem, 14.5 * fem),
                                filled: true,
                                fillColor: Color(0xffffffff),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Last Name',
                                hintStyle: SafeGoogleFont(
                                  'Helvetica Now Display',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575 * ffem / fem,
                                  letterSpacing: 1.5 * fem,
                                  color: Color(0x66323940),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide.none,
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              style: TextStyle(
                                // Set the font size here
                                fontSize: 15 * ffem,
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
            Positioned(
              // frame568Uq (1:591)
              left: 40 * fem,
              top: 224 * fem,
              child: Container(
                width: 681 * fem,
                height: 45 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // emailei5 (1:592)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 89 * fem, 0 * fem),
                      child: Text(
                        'Email',
                        style: SafeGoogleFont(
                          'Helvetica Now Display',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2575 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Expanded(
                      // Wrap TextField with Expanded widget
                      child: TextField(
                        controller: EmailController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(
                              16 * fem, 11.5 * fem, 16 * fem, 14.5 * fem),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Email',
                          hintStyle: SafeGoogleFont(
                            'Helvetica Now Display',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            letterSpacing: 1.5 * fem,
                            color: Color(0x66323940),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                            borderSide: BorderSide.none,
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20 * fem),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: SafeGoogleFont(
                          'Helvetica Now Display',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575 * ffem / fem,
                          letterSpacing: 1.5 * fem,
                          color: Color(0xff323940),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame61x6V (1:594)
              left: 40 * fem,
              top: 338 * fem,
              child: Container(
                width: 731 * fem,
                height: 216 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // addressUKj (1:595)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 7 * fem, 70 * fem, 0 * fem),
                      child: Text(
                        'Address',
                        style: SafeGoogleFont(
                          'Helvetica Now Display',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2575 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // frame60o77 (1:596)
                      width: 594 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupqjooLMw (XiC1oBKgeRRV9tXwCCQJoo)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // inputfieldUDF (1:597)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 12 * fem),
                                  child: TextField(
                                    controller:
                                        streetLineController, // this is important
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          16 * fem,
                                          11.5 * fem,
                                          16 * fem,
                                          14.5 * fem),
                                      filled: true,
                                      fillColor: Color(0xffffffff),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        borderSide: BorderSide.none,
                                      ),
                                      hintText: 'Street line',
                                      hintStyle: SafeGoogleFont(
                                        'Helvetica Now Display',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: 1.5 * fem,
                                        color: Color(0x66323940),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        borderSide: BorderSide.none,
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    // you can add other properties like validator, keyboardType, etc.
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        16 * fem,
                                        11.5 * fem,
                                        16 * fem,
                                        14.5 * fem),
                                    filled: true,
                                    fillColor: Color(0xffffffff),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'Street line 2 (Optional)',
                                    hintStyle: SafeGoogleFont(
                                      'Helvetica Now Display',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575 * ffem / fem,
                                      letterSpacing: 1.5 * fem,
                                      color: Color(0x66323940),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      borderSide: BorderSide.none,
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame59F13 (1:599)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            width: double.infinity,
                            height: 45 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // inputfieldNLZ (1:600)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 317 * fem,
                                      height: 45 * fem,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
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
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // box2g1 (I1:600;1996:1473)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 266 * fem,
                                                height: 45 * fem,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4 * fem),
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // keyfield8yw (I1:600;1996:1501)
                                            left: 16 * fem,
                                            top: 11.5 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 31 * fem,
                                                height: 19 * fem,
                                                child: Text(
                                                  'City',
                                                  style: SafeGoogleFont(
                                                    'Helvetica Now Display',
                                                    fontSize: 15 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575 * ffem / fem,
                                                    letterSpacing: 1.5 * fem,
                                                    color: Color(0x66323940),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // inputfield23j (1:601)
                                  left: 277 * fem,
                                  top: 0 * fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 317 * fem,
                                      height: 45 * fem,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
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
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // boxVCD (I1:601;1996:1473)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 267 * fem,
                                                height: 45 * fem,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4 * fem),
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // keyfieldR5s (I1:601;1996:1501)
                                            left: 16 * fem,
                                            top: 11.5 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 129 * fem,
                                                height: 19 * fem,
                                                child: Text(
                                                  'Zip / Postal code',
                                                  style: SafeGoogleFont(
                                                    'Helvetica Now Display',
                                                    fontSize: 15 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575 * ffem / fem,
                                                    letterSpacing: 1.5 * fem,
                                                    color: Color(0x66323940),
                                                  ),
                                                ),
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
                          TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  16 * fem, 11.5 * fem, 16 * fem, 14.5 * fem),
                              filled: true,
                              fillColor: Color(0xffffffff),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Country',
                              hintStyle: SafeGoogleFont(
                                'Helvetica Now Display',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                letterSpacing: 1.5 * fem,
                                color: Color(0x66323940),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
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
            Positioned(
              // frame58Jos (1:603)
              left: 40 * fem,
              top: 281 * fem,
              child: Container(
                width: 681 * fem,
                height: 45 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // phoneRdb (1:604)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 83 * fem, 0 * fem),
                      child: Text(
                        'Phone',
                        style: SafeGoogleFont(
                          'Helvetica Now Display',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2575 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // frame57M1T (1:605)
                        width: 544 * fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // inputfield6jj (1:606)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 317 * fem,
                                  height: 45 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
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
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // boxXq3 (I1:606;1996:1473)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 77 * fem,
                                            height: 45 * fem,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        4 * fem),
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // keyfieldFW9 (I1:606;1996:1501)
                                        left: 16 * fem,
                                        top: 11.5 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 39 * fem,
                                            height: 19 * fem,
                                            child: Text(
                                              'Code',
                                              style: SafeGoogleFont(
                                                'Helvetica Now Display',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575 * ffem / fem,
                                                letterSpacing: 1.5 * fem,
                                                color: Color(0x66323940),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inputfield8K3 (1:607)
                              left: 86 * fem,
                              top: 0 * fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(16 * fem,
                                      11.5 * fem, 16 * fem, 14.5 * fem),
                                  width: 458 * fem,
                                  height: 45 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
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
                                  child: TextField(
                                    controller: PhoneController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.zero,
                                      isDense: true,
                                      hintText: 'Phone',
                                      hintStyle: SafeGoogleFont(
                                        'Helvetica Now Display',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: 1.5 * fem,
                                        color: Color(0x66323940),
                                      ),
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      fontSize: 15 * ffem,
                                    ),
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
            Positioned(
              // frame636QH (1:608)
              left: 40 * fem,
              top: 566 * fem,
              child: Container(
                width: 681 * fem,
                height: 102 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // occupation233 (1:609)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 7 * fem, 40 * fem, 0 * fem),
                      child: Text(
                        'Occupation',
                        style: SafeGoogleFont(
                          'Helvetica Now Display',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2575 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // frame62LZX (1:610)
                      width: 544 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // inputfieldHUm (1:611)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 12 * fem),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(
                                    16 * fem, 11.5 * fem, 16 * fem, 14.5 * fem),
                                filled: true,
                                fillColor: Color(0xffffffff),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Occupation',
                                hintStyle: SafeGoogleFont(
                                  'Helvetica Now Display',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575 * ffem / fem,
                                  letterSpacing: 1.5 * fem,
                                  color: Color(0x66323940),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide.none,
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  16 * fem, 11.5 * fem, 16 * fem, 14.5 * fem),
                              filled: true,
                              fillColor: Color(0xffffffff),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Employer',
                              hintStyle: SafeGoogleFont(
                                'Helvetica Now Display',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                letterSpacing: 1.5 * fem,
                                color: Color(0x66323940),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
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
          ],
        ),
      ),
    );
  }
}
