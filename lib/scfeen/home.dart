import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              title: Text("Safety "),
              elevation: 3,
              actions: [
                IconButton(
                onPressed: () {  },
                icon: Icon(FeatherIcons.bell)
              ),
                SizedBox(width:10),
                IconButton(
                    onPressed: () {  },
                    icon: Icon(FeatherIcons.messageSquare)
                ),

              ]
            ),
            body:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: ListView.builder(
                        itemCount:2,
                        padding: EdgeInsets.all(0),
                        scrollDirection:  Axis.horizontal,
                        itemBuilder:(BuildContext context, int index){
                          if(index== 0){
                            return Column(
                              children: [
                                Container(
                                  width:50,
                                  height:50,
                                   decoration: BoxDecoration(
                                     shape:BoxShape.circle,
                                     border:Border.all(
                                       color: Colors.redAccent, // Border color
                                       width: 2.0,
                                     ),
                                     image: DecorationImage(
                                         fit:BoxFit.cover,
                                         image:  NetworkImage("")
                                     )
                                   ),
                                ),
                                Text("You")
                              ],
                            );
                          }else if(index == 1){
                            return Container(
                            width:50,
                            height:50,
                            decoration: BoxDecoration(
                                   shape:BoxShape.circle,
                                   border:Border.all(
                                    color: Colors.grey.shade300, // Border color
                                    width: 1.0,
                          )
                          ),
                           child: Center(
                             child: Icon(Icons.add)
                          )
                          );
                          }else {
                            //return ;
                          }
                        }
                    )
                   ),
                  const SliverToBoxAdapter(
                    child:
                      Column(
                        children: [
                          SizedBox(height:10),
                          Text("Send Distress"),
                          SizedBox(height:10),
                        ],
                      )
                    ,),
                  SliverGrid.count(
                     crossAxisCount: 3,
                     mainAxisSpacing: 30.0, // Spacing between rows
                     crossAxisSpacing: 40.0,
                    children: [
                     InkWell(
                       onTap: (){},
                       child: Column(
                         children: [
                           Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(6),
                               color: Colors.grey.shade300,
                             ),
                             child: Center(
                               child: Icon(FeatherIcons.heart),
                             ),
                           ),
                           Text("Health")
                         ],
                       ),
                     ),

                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),

                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: (){},
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.grey.shade300,
                               ),
                               child: Center(
                                 child: Icon(FeatherIcons.heart),
                               ),
                             ),
                             Text("Health")
                           ],
                         ),
                       ),

                    ],
                  ),
                ]
              ),
            )
    );
  }
}