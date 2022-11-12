import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Search());
}

class Search extends StatelessWidget {
  const Search({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.white12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA Sneakers', style: TextStyle(color: Colors.black),)),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA Sneakers', style: TextStyle(color: Colors.black),)),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA Sneakers', style: TextStyle(color: Colors.black),)),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA Sneakers', style: TextStyle(color: Colors.black),)),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA Sneakers', style: TextStyle(color: Colors.black),)),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA Sneakers', style: TextStyle(color: Colors.black),)),
                                Divider(color: Colors.black, thickness: 1.0,),
                                TextButton(onPressed: () {}, child: Text('PUMA', style: TextStyle(color: Colors.black))),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18, 8, 18, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: 330,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                color: Color(0x33000000),
                                offset: Offset(2, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: TextFormField(
                                    // controller: TextEditingController(text: ''),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 22,
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
            ],
          ),
        ),
      ),
    );
  }
}
