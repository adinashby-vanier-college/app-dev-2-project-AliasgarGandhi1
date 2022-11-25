import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtl_chassures/my_flutter_app_icons.dart';
import 'package:mtl_chassures/product.dart';

// void main() {
//   runApp(Search());
// }

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextField(
                    controller: _searchController,
                    onSubmitted: (value) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Product()));
                    },
                    decoration: InputDecoration(
                      hintText: 'Search',
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                      prefixIcon: Icon(MyFlutterApp.search),
                      prefixIconColor: Colors.red,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                              style: BorderStyle.solid)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
