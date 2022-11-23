import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart';
import 'package:flutter/services.dart';



// void main() {
//
//   runApp(Checkout());
// }

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        // appBar: AppBar(


        backgroundColor: Color.fromRGBO(241, 237, 236, 20.0),
        body: SafeArea(child:  Column(
          children: <Widget>[
            Container(

                height: 75.0,
                padding: EdgeInsets.all(15.0),
                child: Container(

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            }, icon: Icon(MyFlutterApp.arrow_left)),
                        // Image.network(
                        //     'https://img.icons8.com/ios-filled/344/squared-menu.png'),

                        Text(
                          "Checkout",
                          style: TextStyle(
                            fontSize: 22,
                            height: 2,
                            //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                            color: Colors.black,
                            //font color
                            letterSpacing: 2,
                            //letter spacing
                            fontWeight: FontWeight.bold,
                            // decorationThickness: 5, //decoration 'underline' thickness
                          ),
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(MyFlutterApp.home)),
                        // Image.network(
                        //   'https://img.icons8.com/ios-filled/344/empty-filter.png',
                        //   alignment: Alignment.centerRight,
                        // )
                      ],
                    ))),

            Container(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  
                  Container(
padding: EdgeInsets.only(left: 15,right: 15),
                    height: 400.0,////.0,
                    width: 350.0,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16,),
                        Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(

                              width: 90.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                              color:Colors.grey[400],
                                borderRadius: BorderRadius.circular(20),),
                              child: Center(

                                child: Container(

                                  width: 70.0,
                                  height: 90.0,
                                  padding: EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  child: Image.asset('Images/sneakers.png'),
                                ),
                              ),

                            ),
                            SizedBox(width: 12,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[



                                  Row(
                                    children: [
                                      Container(width:100.0,child: Text("Nike Air Max",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      ),

                                      ),



                                      Spacer(),

                                      Text("\$120.00",style: TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      Container(width:100.0,child: Text("Cross Training Weightlifting Shoe",style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                      ),

                                      ),



                                      Spacer(),


                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      Container(width:100.0,child: Text("Size: M 8.5/W 10",style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                      ),
                                      ),

                                      ),



                                      Spacer(),


                                    ],
                                  ),
                                  SizedBox(height: 8,),

                                  Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Icon(
                                          MyFlutterApp.plus,
                                          color: Colors.white,
                                          size: 15.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8),
                                        child: Text("1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Icon(
                                          MyFlutterApp.plus,
                                          color: Colors.white,
                                          size: 15.0,
                                        ),
                                      ),
                                      Spacer(),

                                      IconButton(
                                          onPressed: () {
                                            IconButton.styleFrom(
                                                foregroundColor:
                                                Color.fromRGBO(255, 0, 0, 100.0));
                                          },
                                          icon: Icon(MyFlutterApp.trash_alt,color: Colors.black87,)),
                                    ],
                                  ),
                                  SizedBox(height: 21,),



                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30,),
                        Divider(color: Colors.black45,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            Text(
                                "Total",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),
                            Text(
                                "\$23.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            Text(
                                "Delivery charges",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                )
                            ),
                            Text(
                                "\$10.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                )
                            ),

                          ],
                        ),
                        SizedBox(height: 4,),
                        Divider(color: Colors.black,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            Text(
                                "Sub Total",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                )
                            ),
                            Text(
                                "\$23.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                )
                            ),

                          ],
                        ),

                        // Container(
                        //
                        //   width: 350,
                        //   height: 30,
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.end,
                        //     crossAxisAlignment: CrossAxisAlignment.end,
                        //     children: [
                        //       Container(
                        //         margin: EdgeInsets.symmetric(
                        //             horizontal: 15.0, vertical: 4.0),
                        //         // child: TextButton(
                        //         //   onPressed: () {},
                        //         //   child: Text(
                        //         //     'Buy Now',
                        //         //     style: TextStyle(color: Colors.white),
                        //         //   ),
                        //         //   style: ButtonStyle(
                        //         //     backgroundColor:
                        //         //     MaterialStatePropertyAll(Colors.red),
                        //         //   ),
                        //         //   onHover: (value) => ButtonStyle(
                        //         //       backgroundColor: MaterialStatePropertyAll(
                        //         //           Colors.white),
                        //         //       foregroundColor:
                        //         //       MaterialStatePropertyAll(Colors.red)),
                        //         // ),
                        //       ),
                        //
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  SizedBox(height:50,),
                  Material(

                    color: Colors.red,

                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(

                      onTap: () {},
                      borderRadius: BorderRadius.circular(50),

                      child: Container(

                        width: 300,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text('Checkout',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),),

                      ),
                    ),

                  ),
                  SizedBox(height:40,),
                  Material(

                    color: Colors.red,

                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(

                      onTap: () {},
                      borderRadius: BorderRadius.circular(50),

                      child: Container(

                        width: 300,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),),

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
      
    );
  }
}
