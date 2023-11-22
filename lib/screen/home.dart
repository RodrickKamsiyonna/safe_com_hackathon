import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_com/api/RequestProvider.dart';
import 'package:safe_com/api/async_link.dart';

import 'map_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  int selectedValue =  0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<RequestProvider>(
      create: (context) => RequestProvider(),
      child: Scaffold(
              drawer: Placeholder(),
              backgroundColor: Colors.white,
              appBar: AppBar(
                elevation: 3,
                backgroundColor: Colors.white,
                actions: [
                  IconButton(
                  onPressed: () {  },
                  icon: Icon(Iconsax.notification)
                ),

                  IconButton(
                      onPressed: () {  },
                      icon: Icon(Iconsax.message)
                  ),

                ]
              ),
              body:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomScrollView(
                  slivers: [

                    SliverToBoxAdapter(
                      child: SizedBox(height:20,)
                    ),
                    SliverToBoxAdapter(
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Friends", style: GoogleFonts.roboto(fontWeight:FontWeight.w900,fontSize:16,color: Colors.black)),
                          SizedBox(height: 20,)
                        ],
                      )
                      ,),

                    SliverToBoxAdapter(
                      child: Container(

                         height:MediaQuery.of(context).size.height*0.13,
                         width:MediaQuery.of(context).size. width *0.1 ,
                        child: ListView.builder(
                            itemCount: 4,
                            padding: EdgeInsets.all(0),
                            scrollDirection:  Axis.horizontal,
                            itemBuilder:(BuildContext context, int index){
                              if(index== 0){
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right:15),
                                      padding: EdgeInsets.all(10),
                                      width:70,
                                      height:70,
                                       decoration: BoxDecoration(
                                         shape:BoxShape.circle,
                                         border:Border.all(
                                           color: Colors.black, // Border color
                                           width: 2.0,
                                         ),
                                         image: const DecorationImage(
                                             fit:BoxFit.cover,
                                             image:  NetworkImage("https://st2.depositphotos.com/4431055/7434/i/950/depositphotos_74340667-stock-photo-smiling-human-face-women.jpg")
                                         )
                                       ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("You", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black))
                                  ],
                                );
                              }
                              if(index == 1){
                                return Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right:15),
                                        padding: EdgeInsets.all(10),
                                    width:70,
                                    height:70,
                                    decoration: BoxDecoration(
                                           shape:BoxShape.circle,
                                           border:Border.all(
                                            color: Colors.grey.shade300, // Border color
                                            width: 2.0,
                              )
                              ),
                               child: Center(
                                     child: Icon(Icons.add)
                              )
                              ),
                                    SizedBox(height: 5,),
                                    Text("Add", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black))
                                  ],
                                );
                              }
                              if(index== 2){
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right:15),
                                      padding: EdgeInsets.all(10),
                                      width:70,
                                      height:70,
                                      decoration: BoxDecoration(
                                          shape:BoxShape.circle,
                                          border:Border.all(
                                            color: Colors.black, // Border color
                                            width: 2.0,
                                          ),
                                          image: const DecorationImage(
                                              fit:BoxFit.cover,
                                              image:  NetworkImage("https://thumbs.dreamstime.com/b/portrait-beautiful-happy-woman-white-teeth-smiling-beauty-attractive-healthy-girl-perfect-smile-blonde-hair-fresh-face-76138238.jpg")
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("Jasmine", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black))
                                  ],
                                );
                              }
                              if(index== 3){
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right:15),
                                      padding: EdgeInsets.all(10),
                                      width:70,
                                      height:70,
                                      decoration: BoxDecoration(
                                          shape:BoxShape.circle,
                                          border:Border.all(
                                            color: Colors.black, // Border color
                                            width: 2.0,
                                          ),
                                          image: const DecorationImage(
                                              fit:BoxFit.cover,
                                              image:  NetworkImage("https://thumbs.dreamstime.com/b/beautiful-young-woman-relaxing-kitchen-happy-smiling-girl-home-portrait-resting-relaxation-leisure-concept-beautiful-170296864.jpg")
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("Cassie", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black))
                                  ],
                                );
                              }
                            }
                        ),
                      )
                     ),
                    SliverToBoxAdapter(
                      child:
                        Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height:10),
                            Text("Send Distress", style: GoogleFonts.roboto(fontWeight:FontWeight.w900,fontSize:16,color: Colors.black)),
                            SizedBox(height:30),
                          ],
                        )
                      ,),
                    SliverGrid.count(
                       crossAxisCount: 4,
                       mainAxisSpacing: 15.0, // Spacing between rows
                       crossAxisSpacing: 15.0,
                       childAspectRatio: 0.95,
                      children: [
                       InkWell(
                         onTap: (){
                           showBottomSheet(
                               context: context,
                               builder: (BuildContext context) {
                                 return   StatefulBuilder(
                                     builder: (BuildContext context, StateSetter setState ) {
                                     void handleRadioValueChanged(int? value) {
                                       setState(() {
                                         selectedValue = value! ;
                                       });
                                     }
                                     return Container(
                                         decoration: BoxDecoration(
                                         color:  Colors.white,
                                         boxShadow: [
                                             BoxShadow(
                                               color: Colors.black.withOpacity(0.2), // Color of the shadow
                                               spreadRadius: 5, // Spread radius
                                               blurRadius: 10, // Blur radius
                                               offset: Offset(0, 3), // Offset in the x and y directions
                                             ),
                                           ],
                                         borderRadius: BorderRadius.only(
                                             topLeft:Radius.circular(20),
                                             topRight:Radius.circular(20)),

                                     ),
                                     width: MediaQuery.of(context).size.height*0.98,
                                     height:MediaQuery.of(context).size.height*0.3,
                                     child: ListView(
                                       children: [
                                         Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                         RadioListTile<int>(
                                           activeColor: Colors.black,
                                           materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                           title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                           value: 0,
                                           groupValue: selectedValue,
                                           onChanged: handleRadioValueChanged,
                                         ),

                                         RadioListTile<int>(
                                           activeColor: Colors.black,
                                           materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                           title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                           value: 1,
                                           groupValue: selectedValue,
                                           onChanged: handleRadioValueChanged,
                                         ),
                                      SizedBox(height: 20,),

                                     Container(
                                       padding: EdgeInsets.all(10),
                                       width:double.infinity,
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           SizedBox(
                                           width: MediaQuery.of(context).size.width*0.4,
                                           child: MaterialButton(onPressed: (){
                                             Fluttertoast.showToast(
                                               msg: "Distress Sent",
                                               toastLength: Toast.LENGTH_SHORT,
                                               gravity: ToastGravity.BOTTOM,
                                               timeInSecForIosWeb: 1,
                                               backgroundColor: Colors.black,
                                               textColor: Colors.white,
                                               fontSize: 16.0,
                                             );
                                             Navigator.pop(context);  },
                                           padding: EdgeInsets.all(20),
                                           shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           ),
                                           height:40,
                                           textColor:Colors.white ,
                                           color:const Color(0xFF24064A),
                                           child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                           ),
                                         ),

                                       SizedBox(
                                       width: MediaQuery.of(context).size.width*0.4,
                                       child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                       padding: EdgeInsets.all(20),
                                       shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10),
                                       ),
                                       height:40,
                                       textColor:Colors.white ,
                                       color:const Color(0xFF24064A),
                                       child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                       ),),
                                         ]
                                       ),
                                     ),

                                       ],
                                     )
                                     );
                                   }
                                 );
                               }
                               );
                         },
                         child: Ink(
                           width:  50,
                           height: 50,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(6),
                             color: Color(0xFFF9F9F9),
                           ),
                           child: Center(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Spacer(flex:1,),
                                 Icon(FeatherIcons.heart,color:Colors.red),
                                 Spacer(flex:1,),
                                 Text("Med", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                 Spacer(flex:1,),
                               ],
                             ),
                           ),
                         ),
                       ),

                        InkWell(
                          onTap: (){
                            showBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return   StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setState ) {
                                        void handleRadioValueChanged(int? value) {
                                          setState(() {
                                            selectedValue = value! ;
                                          });
                                        }
                                        return Container(
                                            decoration: BoxDecoration(
                                              color:  Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.2), // Color of the shadow
                                                  spreadRadius: 5, // Spread radius
                                                  blurRadius: 10, // Blur radius
                                                  offset: Offset(0, 3), // Offset in the x and y directions
                                                ),
                                              ],
                                              borderRadius: BorderRadius.only(
                                                  topLeft:Radius.circular(20),
                                                  topRight:Radius.circular(20)),

                                            ),
                                            width: MediaQuery.of(context).size.height*0.98,
                                            height:MediaQuery.of(context).size.height*0.3,
                                            child: ListView(
                                              children: [
                                                Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 0,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),

                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 1,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),
                                                SizedBox(height: 20,),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  width:double.infinity,
                                                  child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){
                                                            SendDistress();
                                                            Fluttertoast.showToast(
                                                              msg: "Distress Sent",
                                                              toastLength: Toast.LENGTH_SHORT,
                                                              gravity: ToastGravity.BOTTOM,
                                                              timeInSecForIosWeb: 1,
                                                              backgroundColor: Colors.black,
                                                              textColor: Colors.white,
                                                              fontSize: 16.0,
                                                            );
                                                            Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                                          ),
                                                        ),

                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                                          ),),
                                                      ]
                                                  ),
                                                ),
                                              ],
                                            )
                                        );
                                      }
                                  );
                                }
                            );
                          },
                          child: Ink(
                            width:  50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFF9F9F9),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex:1,),
                                  Icon(Iconsax.car,color: Colors.lightGreen,),
                                  Spacer(flex:1,),
                                  Text("Accident", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                  Spacer(flex:1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return   StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setState ) {
                                        void handleRadioValueChanged(int? value) {
                                          setState(() {
                                            selectedValue = value! ;
                                          });
                                        }
                                        return Container(
                                            decoration: BoxDecoration(
                                              color:  Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.2), // Color of the shadow
                                                  spreadRadius: 5, // Spread radius
                                                  blurRadius: 10, // Blur radius
                                                  offset: Offset(0, 3), // Offset in the x and y directions
                                                ),
                                              ],
                                              borderRadius: BorderRadius.only(
                                                  topLeft:Radius.circular(20),
                                                  topRight:Radius.circular(20)),

                                            ),
                                            width: MediaQuery.of(context).size.height*0.98,
                                            height:MediaQuery.of(context).size.height*0.3,
                                            child: ListView(
                                              children: [
                                                Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 0,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),

                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 1,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),
                                                SizedBox(height: 20,),

                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  width:double.infinity,
                                                  child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){
                                                            SendDistress();
                                                            Fluttertoast.showToast(
                                                              msg: "Distress Sent",
                                                              toastLength: Toast.LENGTH_SHORT,
                                                              gravity: ToastGravity.BOTTOM,
                                                              timeInSecForIosWeb: 1,
                                                              backgroundColor: Colors.black,
                                                              textColor: Colors.white,
                                                              fontSize: 16.0,
                                                            );
                                                            Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                                          ),
                                                        ),

                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                                          ),),
                                                      ]
                                                  ),
                                                ),

                                              ],
                                            )
                                        );
                                      }
                                  );
                                }
                            );
                          },
                          child: Ink(
                            width:  50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFF9F9F9),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex:1,),
                                  Icon(Icons.fire_extinguisher_outlined, color:Colors.greenAccent,),
                                  Spacer(flex:1,),
                                  Text("Fire", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                  Spacer(flex:1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return   StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setState ) {
                                        void handleRadioValueChanged(int? value) {
                                          setState(() {
                                            selectedValue = value! ;
                                          });
                                        }
                                        return Container(
                                            decoration: BoxDecoration(
                                              color:  Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.2), // Color of the shadow
                                                  spreadRadius: 5, // Spread radius
                                                  blurRadius: 10, // Blur radius
                                                  offset: Offset(0, 3), // Offset in the x and y directions
                                                ),
                                              ],
                                              borderRadius: BorderRadius.only(
                                                  topLeft:Radius.circular(20),
                                                  topRight:Radius.circular(20)),

                                            ),
                                            width: MediaQuery.of(context).size.height*0.98,
                                            height:MediaQuery.of(context).size.height*0.3,
                                            child: ListView(
                                              children: [
                                                Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 0,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),

                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 1,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),
                                                SizedBox(height: 20,),

                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  width:double.infinity,
                                                  child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){
                                                            SendDistress();
                                                            Fluttertoast.showToast(
                                                              msg: "Distress Sent",
                                                              toastLength: Toast.LENGTH_SHORT,
                                                              gravity: ToastGravity.BOTTOM,
                                                              timeInSecForIosWeb: 1,
                                                              backgroundColor: Colors.black,
                                                              textColor: Colors.white,
                                                              fontSize: 16.0,
                                                            );
                                                            Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                                          ),
                                                        ),

                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                                          ),),
                                                      ]
                                                  ),
                                                ),

                                              ],
                                            )
                                        );
                                      }
                                  );
                                }
                            );
                          },
                          child: Ink(
                            width:  50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFF9F9F9),
                            ),
                            child:  Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex:1,),
                                  Icon(FeatherIcons.anchor,color:Colors.teal),
                                  Spacer(flex:1,),
                                  Text("Theft", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                  Spacer(flex:1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return   StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setState ) {
                                        void handleRadioValueChanged(int? value) {
                                          setState(() {
                                            selectedValue = value! ;
                                          });
                                        }
                                        return Container(
                                            decoration: BoxDecoration(
                                              color:  Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.2), // Color of the shadow
                                                  spreadRadius: 5, // Spread radius
                                                  blurRadius: 10, // Blur radius
                                                  offset: Offset(0, 3), // Offset in the x and y directions
                                                ),
                                              ],
                                              borderRadius: BorderRadius.only(
                                                  topLeft:Radius.circular(20),
                                                  topRight:Radius.circular(20)),

                                            ),
                                            width: MediaQuery.of(context).size.height*0.98,
                                            height:MediaQuery.of(context).size.height*0.3,
                                            child: ListView(
                                              children: [
                                                Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 0,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),

                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 1,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),
                                                SizedBox(height: 20,),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  width:double.infinity,
                                                  child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){
                                                            SendDistress();
                                                            Fluttertoast.showToast(
                                                              msg: "Distress Sent",
                                                              toastLength: Toast.LENGTH_SHORT,
                                                              gravity: ToastGravity.BOTTOM,
                                                              timeInSecForIosWeb: 1,
                                                              backgroundColor: Colors.black,
                                                              textColor: Colors.white,
                                                              fontSize: 16.0,
                                                            );
                                                            Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                                          ),
                                                        ),

                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                                          ),),
                                                      ]
                                                  ),
                                                ),

                                              ],
                                            )
                                        );
                                      }
                                  );
                                }
                            );
                          },
                          child: Ink(
                            width:  50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFF9F9F9),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex:1,),
                                  Icon(Iconsax.aquarius,color: Colors.orange),
                                  Spacer(flex:1,),
                                  Text("Violence", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                  Spacer(flex:1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return   StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setState ) {
                                        void handleRadioValueChanged(int? value) {
                                          setState(() {
                                            selectedValue = value! ;
                                          });
                                        }
                                        return Container(
                                            decoration: BoxDecoration(
                                              color:  Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.2), // Color of the shadow
                                                  spreadRadius: 5, // Spread radius
                                                  blurRadius: 10, // Blur radius
                                                  offset: Offset(0, 3), // Offset in the x and y directions
                                                ),
                                              ],
                                              borderRadius: BorderRadius.only(
                                                  topLeft:Radius.circular(20),
                                                  topRight:Radius.circular(20)),

                                            ),
                                            width: MediaQuery.of(context).size.height*0.98,
                                            height:MediaQuery.of(context).size.height*0.3,
                                            child: ListView(
                                              children: [
                                                Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 0,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),

                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 1,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),
                                                SizedBox(height: 20,),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  width:double.infinity,
                                                  child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){
                                                            SendDistress();
                                                            Fluttertoast.showToast(
                                                              msg: "Distress Sent",
                                                              toastLength: Toast.LENGTH_SHORT,
                                                              gravity: ToastGravity.BOTTOM,
                                                              timeInSecForIosWeb: 1,
                                                              backgroundColor: Colors.black,
                                                              textColor: Colors.white,
                                                              fontSize: 16.0,
                                                            );
                                                            Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                                          ),
                                                        ),

                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                                          ),),
                                                      ]
                                                  ),
                                                ),
                                              ],
                                            )
                                        );
                                      }
                                  );
                                }
                            );
                          },
                          child: Ink(
                            width:  50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFF9F9F9),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex:1,),
                                  Icon(FeatherIcons.check,color:Colors.lightGreenAccent),
                                  Spacer(flex:1,),
                                  Text("Med", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                  Spacer(flex:1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                                showBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return   StatefulBuilder(
                                          builder: (BuildContext context, StateSetter setState ) {
                                            void handleRadioValueChanged(int? value) {
                                              setState(() {
                                                selectedValue = value! ;
                                              });
                                            }
                                            return Container(
                                                decoration: BoxDecoration(
                                                  color:  Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.2), // Color of the shadow
                                                      spreadRadius: 5, // Spread radius
                                                      blurRadius: 10, // Blur radius
                                                      offset: Offset(0, 3), // Offset in the x and y directions
                                                    ),
                                                  ],
                                                  borderRadius: BorderRadius.only(
                                                      topLeft:Radius.circular(20),
                                                      topRight:Radius.circular(20)),

                                                ),
                                                width: MediaQuery.of(context).size.height*0.98,
                                                height:MediaQuery.of(context).size.height*0.3,
                                                child: ListView(
                                                  children: [
                                                    Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                                    RadioListTile<int>(
                                                      activeColor: Colors.black,
                                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                      title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                      value: 0,
                                                      groupValue: selectedValue,
                                                      onChanged: handleRadioValueChanged,
                                                    ),

                                                    RadioListTile<int>(
                                                      activeColor: Colors.black,
                                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                      title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                      value: 1,
                                                      groupValue: selectedValue,
                                                      onChanged: handleRadioValueChanged,
                                                    ),
                                                    SizedBox(height: 20,),

                                                    Container(
                                                      padding: EdgeInsets.all(10),
                                                      width:double.infinity,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            SizedBox(
                                                              width: MediaQuery.of(context).size.width*0.4,
                                                              child: MaterialButton(onPressed: (){
                                                                SendDistress();
                                                                Fluttertoast.showToast(
                                                                  msg: "Distress Sent",
                                                                  toastLength: Toast.LENGTH_SHORT,
                                                                  gravity: ToastGravity.BOTTOM,
                                                                  timeInSecForIosWeb: 1,
                                                                  backgroundColor: Colors.black,
                                                                  textColor: Colors.white,
                                                                  fontSize: 16.0,
                                                                );
                                                                Navigator.pop(context);  },
                                                                padding: EdgeInsets.all(20),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                height:40,
                                                                textColor:Colors.white ,
                                                                color:const Color(0xFF24064A),
                                                                child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                                              ),
                                                            ),

                                                            SizedBox(
                                                              width: MediaQuery.of(context).size.width*0.4,
                                                              child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                                padding: EdgeInsets.all(20),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                height:40,
                                                                textColor:Colors.white ,
                                                                color:const Color(0xFF24064A),
                                                                child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                                              ),),
                                                          ]
                                                      ),
                                                    ),

                                                  ],
                                                )
                                            );
                                          }
                                      );
                                    }
                                );
                          },
                          child: Ink(
                            width:  50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFF9F9F9),
                            ),
                            child:  Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex:1,),
                                  Icon(FeatherIcons.heart,color:Colors.teal,),
                                  Spacer(flex:1,),
                                  Text("Med", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                  Spacer(flex:1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  int selectedValue =  0;

                                  void handleRadioValueChanged(int? value) {
                                    setState(() {
                                      selectedValue = value! ;
                                    });
                                  }
                                  return   Container(
                                      decoration: BoxDecoration(
                                        color:  Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2), // Color of the shadow
                                            spreadRadius: 5, // Spread radius
                                            blurRadius: 10, // Blur radius
                                            offset: Offset(0, 3), // Offset in the x and y directions
                                          ),
                                        ],
                                        borderRadius: BorderRadius.only(
                                            topLeft:Radius.circular(20),
                                            topRight:Radius.circular(20)),

                                      ),
                                      width: MediaQuery.of(context).size.height*0.98,
                                      height:MediaQuery.of(context).size.height*0.3,
                                      child: ListView(
                                        children: [
                                          Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                          RadioListTile<int>(
                                            activeColor: Colors.black,
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                            value: 0,
                                            groupValue: selectedValue,
                                            onChanged: handleRadioValueChanged,
                                          ),

                                          RadioListTile<int>(
                                            activeColor: Colors.black,
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                            value: 1,
                                            groupValue: selectedValue,
                                            onChanged: handleRadioValueChanged,
                                          ),
                                          SizedBox(height: 20,),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            width:double.infinity,
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width: MediaQuery.of(context).size.width*0.4,
                                                    child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                      padding: EdgeInsets.all(20),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10),
                                                      ),
                                                      height:40,
                                                      textColor:Colors.white ,
                                                      color:const Color(0xFF24064A),
                                                      child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                                    ),
                                                  ),

                                                  SizedBox(
                                                    width: MediaQuery.of(context).size.width*0.4,
                                                    child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                      padding: EdgeInsets.all(20),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10),
                                                      ),
                                                      height:40,
                                                      textColor:Colors.white ,
                                                      color:const Color(0xFF24064A),
                                                      child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                                    ),),
                                                ]
                                            ),
                                          ),

                                        ],
                                      )
                                  );
                                }
                            );
                          },
                          child: Ink(
                            width:  50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFF9F9F9),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex:1,),
                                  Icon(FeatherIcons.heart,color:Colors.tealAccent),
                                  Spacer(flex:1,),
                                  Text("Med", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                  Spacer(flex:1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return   StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setState ) {
                                        void handleRadioValueChanged(int? value) {
                                          setState(() {
                                            selectedValue = value! ;
                                          });
                                        }
                                        return Container(
                                            decoration: BoxDecoration(
                                              color:  Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.2), // Color of the shadow
                                                  spreadRadius: 5, // Spread radius
                                                  blurRadius: 10, // Blur radius
                                                  offset: Offset(0, 3), // Offset in the x and y directions
                                                ),
                                              ],
                                              borderRadius: BorderRadius.only(
                                                  topLeft:Radius.circular(20),
                                                  topRight:Radius.circular(20)),

                                            ),
                                            width: MediaQuery.of(context).size.height*0.98,
                                            height:MediaQuery.of(context).size.height*0.3,
                                            child: ListView(
                                              children: [
                                                Center(child: Container(width:30, child: Divider(thickness:3, color: Colors.grey,height: MediaQuery.of(context).size.width*0.03,))),
                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: const Text('Send to your friends' ,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 0,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),

                                                RadioListTile<int>(
                                                  activeColor: Colors.black,
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  title: Text('Send to the people around you ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black, fontSize:12)),
                                                  value: 1,
                                                  groupValue: selectedValue,
                                                  onChanged: handleRadioValueChanged,
                                                ),
                                                SizedBox(height: 20,),

                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  width:double.infinity,
                                                  child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){
                                                            Fluttertoast.showToast(
                                                              msg: "Distress Sent",
                                                              toastLength: Toast.LENGTH_SHORT,
                                                              gravity: ToastGravity.BOTTOM,
                                                              timeInSecForIosWeb: 1,
                                                              backgroundColor: Colors.black,
                                                              textColor: Colors.white,
                                                              fontSize: 16.0,
                                                            );
                                                            Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Send Distress",style: TextStyle( fontSize:12),),
                                                          ),
                                                        ),

                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*0.4,
                                                          child: MaterialButton(onPressed: (){     Navigator.pop(context);  },
                                                            padding: EdgeInsets.all(20),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            height:40,
                                                            textColor:Colors.white ,
                                                            color:const Color(0xFF24064A),
                                                            child: const Text("Cancel",style: TextStyle( fontSize:12),),
                                                          ),),
                                                      ]
                                                  ),
                                                ),

                                              ],
                                            )
                                        );
                                      }
                                  );
                                }
                            );
                          },
                          child: Ink(
                            width:  50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFFF9F9F9),
                            ),
                            child:Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Spacer(flex:1,),
                                  Icon(FeatherIcons.heart,color:Colors.purple),
                                  Spacer(flex:1,),
                                  Text("Med", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black)),
                                  Spacer(flex:1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SliverToBoxAdapter(
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height:20),
                          Text("Sent to You", style: GoogleFonts.roboto(fontWeight:FontWeight.w900,fontSize:16,color: Colors.black)),
                          SizedBox(height:30),
                        ],
                      )
                      ,),

                    SliverToBoxAdapter(
                        child: Container(
                          height:MediaQuery.of(context).size.height*0.13,
                          width:MediaQuery.of(context).size. width *0.1 ,
                          child: StatefulBuilder(
                              builder: (BuildContext context2, StateSetter setState ) {
                              return AnimatedList(
                                  initialItemCount: 3,
                                  padding: EdgeInsets.all(0),
                                  scrollDirection:  Axis.horizontal,
                                  itemBuilder:(BuildContext context1, int index, animated){

                                    if(index== 0){
                                      return Column(
                                        children: [
                                             InkWell(
                                               onTap:(){
                                                 Navigator.of(context).push(MaterialPageRoute<void>(
                                                     builder: (_) => MapScreen()));
                                              },
                                              child: Container(
                                              margin: EdgeInsets.only(right:15),
                                              padding: EdgeInsets.all(10),
                                              width:70,
                                              height:70,
                                              decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  border:Border.all(
                                                    color: Colors.redAccent, // Border color
                                                    width: 2.0,
                                                  ),
                                                  image: const DecorationImage(
                                                      fit:BoxFit.cover,
                                                      image:  NetworkImage("https://st4.depositphotos.com/5954192/25970/i/1600/depositphotos_259703218-stock-photo-close-up-portrait-of-an.jpg")
                                                  )
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text("Jade", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black))
                                        ],
                                      );
                                    }
                                    if(index == 1){
                                      return Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right:15),
                                            padding: EdgeInsets.all(10),
                                            width:70,
                                            height:70,
                                            decoration: BoxDecoration(
                                                shape:BoxShape.circle,
                                                border:Border.all(
                                                  color: Colors.redAccent, // Border color
                                                  width: 2.0,
                                                ),
                                                image: const DecorationImage(
                                                    fit:BoxFit.cover,
                                                    image:  NetworkImage("https://st4.depositphotos.com/10290464/27411/i/1600/depositphotos_274112866-stock-photo-indoor-shot-of-magnetic-beautiful.jpg")
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text("Alex", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black))
                                        ],
                                      );
                                    }else{
                                      return Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right:15),
                                            padding: EdgeInsets.all(10),
                                            width:70,
                                            height:70,
                                            decoration: BoxDecoration(
                                                shape:BoxShape.circle,
                                                border:Border.all(
                                                  color: Colors.redAccent, // Border color
                                                  width: 2.0,
                                                ),
                                                image: const DecorationImage(
                                                    fit:BoxFit.cover,
                                                    image:  NetworkImage("https://st2.depositphotos.com/4071389/10605/i/950/depositphotos_106056786-stock-photo-beautiful-young-brunette.jpg")
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text("Demi", style: GoogleFonts.roboto(fontWeight:FontWeight.w400,fontSize:12,color: Colors.black))
                                        ],
                                      );
                                    }
                                  }
                              );
                            }
                          ),
                        )
                    ),
                  ]
                ),
              )
      ),
    );
  }
}
