import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                          itemCount: 2,
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
                                  width:60,
                                  height:60,
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
                       onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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
                        onTap: (){},
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
                        child: ListView.builder(
                            itemCount: 3,
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
                                            color: Colors.redAccent, // Border color
                                            width: 2.0,
                                          ),
                                          image: const DecorationImage(
                                              fit:BoxFit.cover,
                                              image:  NetworkImage("https://st4.depositphotos.com/5954192/25970/i/1600/depositphotos_259703218-stock-photo-close-up-portrait-of-an.jpg")
                                          )
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
                              }
                              if(index == 2){
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
                        ),
                      )
                  ),
                ]
              ),
            )
    );
  }
}