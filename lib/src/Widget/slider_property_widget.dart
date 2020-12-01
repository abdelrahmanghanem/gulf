import 'package:flutter/material.dart';
import 'package:gulftech/src/Model/property.dart';

class SliderPropertyWidget extends StatefulWidget {
  final Property item;
  const SliderPropertyWidget ({Key key ,@required this.item}): super(key: key);
  @override
  _SliderPropertyWidgetState createState() => _SliderPropertyWidgetState();
}

class _SliderPropertyWidgetState extends State<SliderPropertyWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),

      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: size.width*0.88,
            height: size.height*0.247,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network('http://45.35.169.130/UGPRealEstate_Test/Files/Property/2020102616574453729_IMG_20201025_165045.jpg', fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade100,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: size.width*0.88,
            height: size.height*0.247,

            child: Column(
              children: [
                SizedBox( height: size.height*0.17,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.item.category,style: TextStyle(fontSize: 18,color: Colors.grey.shade800),),
                      Text(widget.item.rowNum,style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(

                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            width:30,
                            height:30,
                            child:  Image.asset("assets/scroll.png"),
                          ),
                          Text("Studio",),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            width:30,
                            height:30,
                            child:  Image.asset("assets/scroll.png"),
                          ),
                          Text(widget.item.bedRoom,style: TextStyle(color: Colors.grey.shade800)),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            width:30,
                            height:30,
                            child:  Image.asset("assets/scroll.png"),
                          ),
                          Text(widget.item.bathRoom,style: TextStyle(color: Colors.grey.shade800)),
                        ],
                      ),


                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
