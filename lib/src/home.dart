import 'package:flutter/material.dart';
import 'package:gulftech/src/Controller/property_controller.dart';
import 'package:gulftech/src/Widget/slider_property_widget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends StateMVC<HomePage> {
  PropertyController _con;
  _HomePageState() : super(PropertyController()) {
    _con = controller;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(

          title: Text("jjj"),
        ),
        body: Container(
          color: Colors.grey.shade200,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [

// ============================================  filter
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                  width: size.width*0.95,
                  height: size.height*0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child:Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.search,color: Colors.grey.shade500,),
                      ),
                      Container(
                        width: size.width*0.48,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a search term',
                            focusColor:  Colors.grey.shade500,
                          ),
                        ),
                      ),

                      SizedBox(width: size.width*0.08,),
                      Container(
                        child: Row(
                          children: [
                            Container(margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Text("Filter",style: TextStyle(fontSize: 18,color: Color.fromRGBO(42, 84, 123, 1)),)
                            ),
                            Container(
                                width: size.width*0.08,
                                height: size.height*0.028,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child:  const Image(
                                  image: AssetImage('assets/filter.png'),
                                )
                            ),
                          ],
                        ),
                      )
                    ],
                  ) ,
                ),

// ============================================  big
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:  List.generate(_con.properties.length, (index)  {
                      return SliderPropertyWidget(item:_con.properties.elementAt(index));
                    }),
                  ),
                ),
                // ============================================  small
                Container(
                  margin: EdgeInsets.all(9),
                  width: size.width,
                  height: size.height * 0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.all(3),
                        width: size.width*0.4,
                        height: size.height*0.14,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            "assets/13.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal:5,vertical: 10),
                                  width:size.width*0.38,
                                  child: Text("Apartment",
                                    style: TextStyle(fontSize: 16,color: Colors.grey.shade600),
                                  )
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    width: size.width*0.04,
                                    height: size.height*0.02,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(1),
                                      child: Image.asset(
                                        "assets/fire.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.favorite_border,size: 20,),
                                ],
                              )
                            ],),
                          Container(
                            width: size.width*0.5,
                            margin: EdgeInsets.symmetric(horizontal:10),
                            child: Text("105,000",
                              style: TextStyle(fontSize: 16,color: Colors.black),
                            ),
                          ),
                          Container(

                            margin: EdgeInsets.symmetric(horizontal:5,vertical: 10),
                            width: size.width*0.5,
                            child: Text("main Axis Alignment Afmmfd ",
                              style: TextStyle(fontSize: 16,color: Colors.grey),
                              softWrap: false,overflow: TextOverflow.ellipsis,),
                          ),
                          Container(
                            width: size.width*0.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      width: size.width*0.05,
                                      height: size.height*0.02,
                                      child:  Image.asset("assets/scroll.png"),
                                    ),
                                    Text("Studio",),
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      width: size.width*0.05,
                                      height: size.height*0.02,
                                      child:  Image.asset("assets/scroll.png"),
                                    ),
                                    Text("0",style: TextStyle(color: Colors.grey.shade600)),
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      width: size.width*0.05,
                                      height: size.height*0.02,
                                      child:  Image.asset("assets/scroll.png"),
                                    ),
                                    Text("0.0",style: TextStyle(color: Colors.grey.shade600)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
