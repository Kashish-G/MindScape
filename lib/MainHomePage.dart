import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 50,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  width: double.infinity,
                  height: 73,
                  color: Color.fromARGB(255, 167, 225, 251),
                  child: 
                      Image.asset("assets/images/logo1.png", height: 60),
                      
                     
                      ),
              Container(
                  padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Embrace A Journey Toward Profound Mental Well- Being!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Relax, we have got your mental well-being covered with the finest care.",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Colors.blue,
                                ),
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  "Need Help",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 12,
                                      
                                      fontWeight: FontWeight.bold),
                                ),
                              )),

                          // CupertinoButton(
                          //     color: Color.fromARGB(248, 157, 214, 241),
                          //     borderRadius: BorderRadius.circular(10),
                          //     onPressed: () {},
                          //     child: const Text(
                          //       "Need Help?",
                          //       style: TextStyle(
                          //           fontSize: 14,
                          //           fontWeight: FontWeight.bold,
                          //           color: Color(0xFF303841)),
                          //     )),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Mental Health 24H Emergency ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                              Text(
                                "345-443-554 ",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF303841)),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      
                    ],
              )),
              Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0)),
                   Text(
                        "Our Specialists!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                       Center(
                         child: Text(
                          "  We use only the best quality materials on the market\n   in order to provide the best products to our patients.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                                               ),
                       ),
                      const SizedBox(height: 20,)
                ],
              ),
              Container(
                color: Color.fromARGB(255, 167, 225, 251), // Blue container
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    
                    Container(
                        height: 200.0,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // Image
                            Container(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                child: Image.asset("assets/images/image6.png"),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(15.0),
                              //   image: DecorationImage(
                              //     image:,
                              //     fit: BoxFit.cover,
                              //   ),
                              // ),
                            ),
                            // Text Overlay
                            Positioned(
                              bottom: 10,
                              left: 100,
                         
                              child: Container(
                                height: 50,
                                width: 150,
                                //padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                     Colors.black.withOpacity(0.5),
                                     Colors.blue.withOpacity(0.5),
                                    ],
                                  ),
                                ),
                                child: 
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Dr. Marc",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                     Text(
                                      "Psychatrist",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ])));
  }
}

// Widget buildImageContainer(String imagePath, String text) {
//   return Container(
//       height: 200.0,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Stack(
//         fit: StackFit.loose,
//         children: [
//           // Image
//           Container(
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15.0),
//               image: DecorationImage(
//                 image: AssetImage(imagePath),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Text Overlay
//           Positioned(
//             bottom: 10,
//             left: 20,
//             right: 20,
//             child: Container(
//               height: 80,
//               padding: EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//                 gradient: LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: [
//                    Colors.black,
//                    Colors.black12,
//                   ],
//                 ),
//               ),
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ));
//}


                  // Container(
                  //       color: Color.fromARGB(255, 167, 225, 251),
                  //       child:Column(
                        
                  //         children: [
                  //           Padding(padding: EdgeInsets.all(10)),
                  //           Container(
                  //             color: Colors.white,
                  //             padding: EdgeInsets.all(20),
                  //           )
                  //         ],
                  //       )
                  //           // Figma Flutter Generator Group1000001044Widget - GROUP
                          
                  //     )
      
//  Positioned(
//                                       top: 266,
//                                       left: 20,
//                                       child: Container(
//                                           width: 348,
//                                           height: 104,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(10),
//                                               topRight: Radius.circular(10),
//                                               bottomLeft: Radius.circular(10),
//                                               bottomRight: Radius.circular(10),
//                                             ),
//                                             gradient: LinearGradient(
//                                                 begin: Alignment(
//                                                     0.9019714593887329,
//                                                     0.09802855551242828),
//                                                 end: Alignment(
//                                                     -0.09802855551242828,
//                                                     0.09802854061126709),
//                                                 colors: [
//                                                   Color.fromRGBO(36, 179, 248,
//                                                       0.30000001192092896),
//                                                   Color.fromRGBO(
//                                                       37, 180, 248, 0)
//                                                 ]),
//                                           ))
//                                           )