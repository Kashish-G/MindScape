// // // // // import 'package:flutter/material.dart';

// // // // // class BotScreen extends StatefulWidget {
// // // // //   const BotScreen({super.key});

// // // // //   @override
// // // // //   State<BotScreen> createState() => _BotScreenState();
// // // // // }

// // // // // class _BotScreenState extends State<BotScreen> {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //       return Scaffold(appBar: AppBar(title:Text("Search") ,));
// // // // //   }
// // // // // }



// // // // // // import 'dart:convert';
// // // // // // import 'package:chatbot/message.dart';
// // // // // // import 'package:chat_bubbles/bubbles/bubble_normal.dart';
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:http/http.dart' as http;

// // // // // // class ChatScreen extends StatefulWidget {
// // // // // // const ChatScreen({super.key});

// // // // // // @override
// // // // // // State<ChatScreen> createState() => _ChatScreenState();
// // // // // // }

// // // // // // class _ChatScreenState extends State<ChatScreen> {
// // // // // // TextEditingController controller = TextEditingController();
// // // // // // ScrollController scrollController = ScrollController();
// // // // // // List<Message> msgs = [];
// // // // // // bool isTyping = false;

// // // // // // void sendMsg() async {
// // // // // // 	String text = controller.text;
// // // // // // 	String apiKey = "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";
// // // // // // 	controller.clear();
// // // // // // 	try {
// // // // // // 	if (text.isNotEmpty) {
// // // // // // 		setState(() {
// // // // // // 		msgs.insert(0, Message(true, text));
// // // // // // 		isTyping = true;
// // // // // // 		});
// // // // // // 		scrollController.animateTo(0.0,
// // // // // // 			duration: const Duration(seconds: 1), curve: Curves.easeOut);
// // // // // // 		var response = await http.post(
// // // // // // 			Uri.parse("https://api.openai.com/v1/chat/completions"),
// // // // // // 			headers: {
// // // // // // 			"Authorization": "Bearer $apiKey",
// // // // // // 			"Content-Type": "application/json"
// // // // // // 			},
// // // // // // 			body: jsonEncode({
// // // // // // 			"model": "gpt-3.5-turbo",
// // // // // // 			"messages": [
// // // // // // 				{"role": "user", "content": text}
// // // // // // 			]
// // // // // // 			}));
// // // // // // 		if (response.statusCode == 200) {
// // // // // // 		var json = jsonDecode(response.body);
// // // // // // 		setState(() {
// // // // // // 			isTyping = false;
// // // // // // 			msgs.insert(
// // // // // // 				0,
// // // // // // 				Message(
// // // // // // 					false,
// // // // // // 					json["choices"][0]["message"]["content"]
// // // // // // 						.toString()
// // // // // // 						.trimLeft()));
// // // // // // 		});
// // // // // // 		scrollController.animateTo(0.0,
// // // // // // 			duration: const Duration(seconds: 1), curve: Curves.easeOut);
// // // // // // 		}
// // // // // // 	}
// // // // // // 	} on Exception {
// // // // // // 	ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
// // // // // // 		content: Text("Some error occurred, please try again!")));
// // // // // // 	}
// // // // // // }

// // // // // // @override
// // // // // // Widget build(BuildContext context) {
// // // // // // 	return Scaffold(
// // // // // // 	appBar: AppBar(
// // // // // // 		title: const Text("Chat Bot"),
// // // // // // 	),
// // // // // // 	body: Column(
// // // // // // 		children: [
// // // // // // 		const SizedBox(
// // // // // // 			height: 8,
// // // // // // 		),
// // // // // // 		Expanded(
// // // // // // 			child: ListView.builder(
// // // // // // 				controller: scrollController,
// // // // // // 				itemCount: msgs.length,
// // // // // // 				shrinkWrap: true,
// // // // // // 				reverse: true,
// // // // // // 				itemBuilder: (context, index) {
// // // // // // 				return Padding(
// // // // // // 					padding: const EdgeInsets.symmetric(vertical: 4),
// // // // // // 					child: isTyping && index == 0
// // // // // // 						? Column(
// // // // // // 							children: [
// // // // // // 								BubbleNormal(
// // // // // // 								text: msgs[0].msg,
// // // // // // 								isSender: true,
// // // // // // 								color: Colors.blue.shade100,
// // // // // // 								),
// // // // // // 								const Padding(
// // // // // // 								padding: EdgeInsets.only(left: 16, top: 4),
// // // // // // 								child: Align(
// // // // // // 									alignment: Alignment.centerLeft,
// // // // // // 									child: Text("Typing...")),
// // // // // // 								)
// // // // // // 							],
// // // // // // 							)
// // // // // // 						: BubbleNormal(
// // // // // // 							text: msgs[index].msg,
// // // // // // 							isSender: msgs[index].isSender,
// // // // // // 							color: msgs[index].isSender
// // // // // // 								? Colors.blue.shade100
// // // // // // 								: Colors.grey.shade200,
// // // // // // 							));
// // // // // // 				}),
// // // // // // 		),
// // // // // // 		Row(
// // // // // // 			children: [
// // // // // // 			Expanded(
// // // // // // 				child: Padding(
// // // // // // 				padding: const EdgeInsets.all(8.0),
// // // // // // 				child: Container(
// // // // // // 					width: double.infinity,
// // // // // // 					height: 40,
// // // // // // 					decoration: BoxDecoration(
// // // // // // 						color: Colors.grey[200],
// // // // // // 						borderRadius: BorderRadius.circular(10)),
// // // // // // 					child: Padding(
// // // // // // 					padding: const EdgeInsets.symmetric(horizontal: 8),
// // // // // // 					child: TextField(
// // // // // // 						controller: controller,
// // // // // // 						textCapitalization: TextCapitalization.sentences,
// // // // // // 						onSubmitted: (value) {
// // // // // // 						sendMsg();
// // // // // // 						},
// // // // // // 						textInputAction: TextInputAction.send,
// // // // // // 						showCursor: true,
// // // // // // 						decoration: const InputDecoration(
// // // // // // 							border: InputBorder.none, hintText: "Enter text"),
// // // // // // 					),
// // // // // // 					),
// // // // // // 				),
// // // // // // 				),
// // // // // // 			),
// // // // // // 			InkWell(
// // // // // // 				onTap: () {
// // // // // // 				sendMsg();
// // // // // // 				},
// // // // // // 				child: Container(
// // // // // // 				height: 40,
// // // // // // 				width: 40,
// // // // // // 				decoration: BoxDecoration(
// // // // // // 					color: Colors.blue,
// // // // // // 					borderRadius: BorderRadius.circular(30)),
// // // // // // 				child: const Icon(
// // // // // // 					Icons.send,
// // // // // // 					color: Colors.white,
// // // // // // 				),
// // // // // // 				),
// // // // // // 			),
// // // // // // 			const SizedBox(
// // // // // // 				width: 8,
// // // // // // 			)
// // // // // // 			],
// // // // // // 		),
// // // // // // 		],
// // // // // // 	),
// // // // // // 	);
// // // // // // }
// // // // // // }

// // // // // class MyGeminiSearchScreen extends StatefulWidget { 
// // // // //   const MyGeminiSearchScreen({super.key}); 
  
// // // // //   @override 
// // // // //   State<MyGeminiSearchScreen> createState() => _MyGeminiSearchScreenState(); 
// // // // // } 
  
// // // // // class _MyGeminiSearchScreenState extends State<MyGeminiSearchScreen> { 
// // // // //   final ImagePicker picker = ImagePicker(); 
// // // // //   final controller = TextEditingController(); 
// // // // //   final gemini = Gemini.instance; 
// // // // //   String? searchedText, result; 
  
// // // // //   bool loading = false; 
// // // // //   bool isTextWithImage = false; 
// // // // //   Uint8List? selectedImage; 
  
// // // // //   @override 
// // // // //   Widget build(BuildContext context) { 
// // // // //     return Scaffold( 
// // // // //       appBar: AppBar( 
// // // // //         title: const Text("Flutter Gemini"), 
// // // // //       ), 
// // // // //       body: Column( 
// // // // //         children: [ 
// // // // //           // Radio to select between different type of search 
// // // // //           Row( 
// // // // //             children: [ 
// // // // //               Radio( 
// // // // //                   value: false, 
// // // // //                   groupValue: isTextWithImage, 
// // // // //                   onChanged: (val) { 
// // // // //                     setState(() { 
// // // // //                       isTextWithImage = val ?? false; 
// // // // //                     }); 
// // // // //                   }), 
// // // // //               const Text("Search with Text"), 
// // // // //               Radio( 
// // // // //                   value: true, 
// // // // //                   groupValue: isTextWithImage, 
// // // // //                   onChanged: (val) { 
// // // // //                     setState(() { 
// // // // //                       isTextWithImage = val ?? false; 
// // // // //                     }); 
// // // // //                   }), 
// // // // //               const Text("Search with Text and Image") 
// // // // //             ], 
// // // // //           ), 
// // // // //           // To show text that we have search for 
// // // // //           if (searchedText != null) 
// // // // //             MaterialButton( 
// // // // //                 color: Colors.green.shade200, 
// // // // //                 onPressed: () { 
// // // // //                   setState(() { 
// // // // //                     searchedText = null; 
// // // // //                     result = null; 
// // // // //                   }); 
// // // // //                 }, 
// // // // //                 child: Text( 
// // // // //                   'Search: $searchedText', 
// // // // //                   style: const TextStyle(color: Colors.white), 
// // // // //                 )), 
// // // // //           Expanded( 
// // // // //             child: Padding( 
// // // // //               padding: const EdgeInsets.all(8.0), 
// // // // //               child: Row( 
// // // // //                 mainAxisAlignment: MainAxisAlignment.center, 
// // // // //                 children: [ 
// // // // //                   Expanded( 
// // // // //                     flex: 2, 
// // // // //                     // Loader when gemini is searching for result 
// // // // //                     child: loading 
// // // // //                         ? const Center(child: CircularProgressIndicator()) 
// // // // //                         : result != null 
// // // // //                             ? Markdown( 
// // // // //                                 data: result!, 
// // // // //                                 padding: 
// // // // //                                     const EdgeInsets.symmetric(horizontal: 12), 
// // // // //                               ) 
// // // // //                             : const Center( 
// // // // //                                 child: Text('Search something!'), 
// // // // //                               ), 
// // // // //                   ), 
// // // // //                   if (selectedImage != null) 
// // // // //                     Expanded( 
// // // // //                       flex: 1, 
// // // // //                       child: ClipRRect( 
// // // // //                         borderRadius: BorderRadius.circular(32), 
// // // // //                         child: Image.memory( 
// // // // //                           selectedImage!, 
// // // // //                           fit: BoxFit.cover, 
// // // // //                         ), 
// // // // //                       ), 
// // // // //                     ) 
// // // // //                 ], 
// // // // //               ), 
// // // // //             ), 
// // // // //           ), 
// // // // //           Card( 
// // // // //             margin: const EdgeInsets.all(12), 
// // // // //             child: Row( 
// // // // //               children: [ 
// // // // //                 Expanded( 
// // // // //                     child: TextField( 
// // // // //                   controller: controller, 
// // // // //                   decoration: const InputDecoration( 
// // // // //                     contentPadding: EdgeInsets.symmetric(horizontal: 12), 
// // // // //                     hintText: 'Write Something...', 
// // // // //                     border: InputBorder.none, 
// // // // //                   ), 
// // // // //                   onTapOutside: (event) => 
// // // // //                       FocusManager.instance.primaryFocus?.unfocus(), 
// // // // //                 )), 
// // // // //                 if (isTextWithImage) 
// // // // //                   Padding( 
// // // // //                     padding: const EdgeInsets.only(right: 8.0), 
// // // // //                     // Select image from device 
// // // // //                     child: IconButton( 
// // // // //                         onPressed: () async { 
// // // // //                           final ImagePicker picker = 
// // // // //                               ImagePicker(); // To select Image from device 
// // // // //                           // Capture a photo. 
// // // // //                           final XFile? photo = await picker.pickImage( 
// // // // //                               source: ImageSource.camera); 
  
// // // // //                           if (photo != null) { 
// // // // //                             photo.readAsBytes().then((value) => setState(() { 
// // // // //                                   selectedImage = value; 
// // // // //                                 })); 
// // // // //                           } 
// // // // //                         }, 
// // // // //                         icon: const Icon(Icons.file_copy_outlined)), 
// // // // //                   ), 
// // // // //                 // Send the typed the search to gemini 
// // // // //                 Padding( 
// // // // //                   padding: const EdgeInsets.only(right: 8.0), 
// // // // //                   child: IconButton( 
// // // // //                       onPressed: () { 
// // // // //                         if (controller.text.isNotEmpty) { 
// // // // //                           if (isTextWithImage) { 
// // // // //                             if (selectedImage != null) { 
// // // // //                               searchedText = controller.text; 
// // // // //                               controller.clear(); 
// // // // //                               loading = true; 
// // // // //                               setState(() {}); 
// // // // //                               gemini 
// // // // //                                   .textAndImage( 
// // // // //                                       text: searchedText!, 
// // // // //                                       image: selectedImage!) 
// // // // //                                   .then((value) { 
// // // // //                                 result = value?.content?.parts?.last.text; 
// // // // //                                 loading = false; 
// // // // //                               }); 
// // // // //                             } else { 
// // // // //                               Fluttertoast.showToast( 
// // // // //                                   msg: "Please select picture"); 
// // // // //                             } 
// // // // //                           } else { 
// // // // //                             searchedText = controller.text; 
// // // // //                             controller.clear(); 
// // // // //                             loading = true; 
// // // // //                             setState(() {}); 
// // // // //                             gemini.text(searchedText!).then((value) { 
// // // // //                               print(value?.content?.parts?.length.toString()); 
// // // // //                               result = value?.content?.parts?.last.text; 
// // // // //                               loading = false; 
// // // // //                             }); 
// // // // //                           } 
// // // // //                         } else { 
// // // // //                           Fluttertoast.showToast(msg: "Please enter something"); 
// // // // //                         } 
// // // // //                       }, 
// // // // //                       icon: const Icon(Icons.send_rounded)), 
// // // // //                 ), 
// // // // //               ], 
// // // // //             ), 
// // // // //           ) 
// // // // //         ], 
// // // // //       ), 
// // // // //     ); 
// // // // //   } 
// // // // // } 

// // // // import 'package:flutter/cupertino.dart';
// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_gemini/src/constants/colors.dart';
// // // // import 'package:flutter_gemini/src/features/chat/components/message_tile.dart';
// // // // import 'package:flutter_gemini/src/features/chat/components/send_message_widget.dart';
// // // // import 'package:google_generative_ai/google_generative_ai.dart';

// // // // class ChatScreen extends StatefulWidget {
// // // //   const ChatScreen({super.key});

// // // //   @override
// // // //   State<ChatScreen> createState() => _ChatScreenState();
// // // // }

// // // // class _ChatScreenState extends State<ChatScreen> {

// // // //   List<Content> history = [];
// // // //   late final GenerativeModel _model;
// // // //   late final ChatSession _chat;
// // // //   final ScrollController _scrollController = ScrollController();
// // // //   final TextEditingController _textController = TextEditingController();
// // // //   final FocusNode _textFieldFocus = FocusNode();
// // // //   bool _loading = false;
// // // //   static const _apiKey = 'YOUR_API_KEY_HERE'; // https://ai.google.dev/ (Get API key from this link)

// // // //   void _scrollDown() {
// // // //     WidgetsBinding.instance.addPostFrameCallback(
// // // //           (_) => _scrollController.animateTo(
// // // //         _scrollController.position.minScrollExtent,
// // // //         duration: const Duration(
// // // //           milliseconds: 750,
// // // //         ),
// // // //         curve: Curves.easeOutCirc,
// // // //       ),
// // // //     );
// // // //   }

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _model = GenerativeModel(
// // // //       model: 'gemini-pro', apiKey: _apiKey,
// // // //     );
// // // //     _chat = _model.startChat();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final size = MediaQuery.of(context).size;
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: const Text('Gemini AI'),
// // // //       ),
// // // //       body: Stack(
// // // //         children: [
// // // //           ListView.separated(
// // // //             padding: const EdgeInsets.fromLTRB(15, 0, 15, 90),
// // // //             itemCount: history.reversed.length,
// // // //             controller: _scrollController,
// // // //             reverse: true,
// // // //             itemBuilder: (context, index){
// // // //               var content = history.reversed.toList()[index];
// // // //               var text = content.parts
// // // //                   .whereType<TextPart>()
// // // //                   .map<String>((e) => e.text)
// // // //                   .join('');
// // // //               return MessageTile(
// // // //                 sendByMe: content.role == 'user',
// // // //                 message: text,

// // // //               );
// // // //             },
// // // //             separatorBuilder: (context, index){
// // // //               return const SizedBox(height: 15,);
// // // //             },
// // // //           ),
// // // //           Align(
// // // //             alignment: Alignment.bottomCenter,
// // // //             child: Container(
// // // //               width: MediaQuery.of(context).size.width,
// // // //               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
// // // //               decoration: BoxDecoration(
// // // //                   color: Colors.white,
// // // //                   border: Border(top: BorderSide(color: Colors.grey.shade200))
// // // //               ),
// // // //               child: Row(
// // // //                 children: [
// // // //                   Expanded(
// // // //                     child: SizedBox(
// // // //                       height: 55,
// // // //                       child: TextField(
// // // //                         cursorColor: MyColors.primaryColor,
// // // //                         controller: _textController,
// // // //                         autofocus: true,
// // // //                         focusNode: _textFieldFocus,
// // // //                         decoration: InputDecoration(
// // // //                             hintText: 'Ask me anything...',
// // // //                             hintStyle: const TextStyle(color: Colors.grey),
// // // //                             filled: true, fillColor: Colors.grey.shade200,
// // // //                             contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
// // // //                             border: OutlineInputBorder(
// // // //                                 borderSide: BorderSide.none,
// // // //                                 borderRadius: BorderRadius.circular(10)
// // // //                             )
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                   const SizedBox(width: 10,),
// // // //                   GestureDetector(
// // // //                     onTap: (){
// // // //                       setState(() {
// // // //                         history.add(Content('user', [TextPart(_textController.text)]));
// // // //                       });
// // // //                       _sendChatMessage(_textController.text, history.length);
// // // //                     },
// // // //                     child: Container(
// // // //                       width: 50, height: 50,
// // // //                       alignment: Alignment.center,
// // // //                       decoration: BoxDecoration(
// // // //                           color: MyColors.primaryColor,
// // // //                           shape: BoxShape.circle,
// // // //                           boxShadow: [
// // // //                             BoxShadow(offset: const Offset(1,1), blurRadius: 3, spreadRadius: 3, color: Colors.black.withOpacity(0.05))
// // // //                           ]
// // // //                       ),
// // // //                       child: _loading
// // // //                           ? const Padding(
// // // //                             padding: EdgeInsets.all(15.0),
// // // //                             child: CircularProgressIndicator.adaptive(
// // // //                                                     backgroundColor: Colors.white, ),
// // // //                           )
// // // //                           : const Icon(Icons.send_rounded, color: Colors.white,),
// // // //                     ),
// // // //                   )
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Future<void> _sendChatMessage(String message, int historyIndex) async {
// // // //     setState(() {
// // // //       _loading = true;
// // // //       _textController.clear();
// // // //       _textFieldFocus.unfocus();
// // // //       _scrollDown();
// // // //     });

// // // //     List<Part> parts = [];

// // // //     try {
// // // //       var response = _chat.sendMessageStream(
// // // //         Content.text(message),
// // // //       );
// // // //       await for(var item in response){
// // // //         var text = item.text;
// // // //         if (text == null) {
// // // //           _showError('No response from API.');
// // // //           return;
// // // //         } else {
// // // //           setState(() {
// // // //             _loading = false;
// // // //             parts.add(TextPart(text));
// // // //             if((history.length - 1) == historyIndex){
// // // //               history.removeAt(historyIndex);
// // // //             }
// // // //             history.insert(historyIndex, Content('model', parts));

// // // //           });
// // // //         }
// // // //       }


// // // //     } catch (e, t) {
// // // //       print(e);
// // // //       print(t);
// // // //       _showError(e.toString());
// // // //       setState(() {
// // // //         _loading = false;
// // // //       });
// // // //     } finally {
// // // //       setState(() {
// // // //         _loading = false;
// // // //       });
// // // //     }
// // // //   }

// // // //   void _showError(String message) {
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (context) {
// // // //         return AlertDialog(
// // // //           title: const Text('Something went wrong'),
// // // //           content: SingleChildScrollView(
// // // //             child: SelectableText(message),
// // // //           ),
// // // //           actions: [
// // // //             TextButton(
// // // //               onPressed: () {
// // // //                 Navigator.of(context).pop();
// // // //               },
// // // //               child: const Text('OK'),
// // // //             )
// // // //           ],
// // // //         );
// // // //       },
// // // //     );


// // // import 'dart:convert';

// // // import 'package:flutter/material.dart';

// // // import 'package:http/http.dart';
// // // import 'package:flutterapp/chat_list_view.dart';
// // // import 'package:flutterapp/chat_text_field.dart';
// // // import 'package:flutterapp/colors.dart';
// // // import 'package:flutterapp/convo.dart';
// // // import 'package:flutterapp/example_widget.dart';

// // // // class BotScreen extends StatefulWidget {
// // // //   const BotScreen({super.key});

// // // //   @override
// // // //   State<BotScreen> createState() => _BotScreenState();
// // // // }

// // // // class _BotScreenState extends State<BotScreen> {
// // // //   final TextEditingController controller = TextEditingController();
// // // //  List<Conversation> conversations = [];

// // // //  //bool get isConversationStarted => conversations.isNotEmpty;

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final textTheme = Theme.of(context).textTheme;
// // // //     return Scaffold(
// // // //       backgroundColor:Colors.white,
// // // //       body: SafeArea(
// // // //         child: SizedBox(
// // // //           width: double.infinity,
// // // //           child: Padding(
// // // //             padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // //             child: SingleChildScrollView(
// // // //               child: SizedBox(
// // // //                 height: MediaQuery.of(context).size.height * .95,
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.center,
// // // //                   children: [
// // // //                     const SizedBox(height: 38),
// // // //                    // if (!isConversationStarted) ...[
// // // //                       // Image.asset("assets/images/logo.png"),
// // // //                       // const SizedBox(height: 24),
// // // //                       // Text(
// // // //                       //   "Welcome to\nChatGPT",
// // // //                       //   style: textTheme.headlineMedium?.copyWith(
// // // //                       //       fontWeight: FontWeight.bold, color: Colors.black),
// // // //                       //   textAlign: TextAlign.center,
// // // //                       // ),
// // // //                       // const SizedBox(height: 12),
// // // //                       // Text(
// // // //                       //   "Ask anything, get your answer",
// // // //                       //   style: textTheme.bodyMedium,
// // // //                       // ),
// // // //                       // Expanded(
// // // //                       //   child: Center(
// // // //                       //     child: Column(
// // // //                       //       mainAxisSize: MainAxisSize.min,
// // // //                       //       children: [
// // // //                       //         const Icon(Icons.wb_sunny_outlined),
// // // //                       //         const SizedBox(height: 6),
// // // //                       //         Text(
// // // //                       //           "Examples",
// // // //                       //           style: textTheme.titleMedium,
// // // //                       //         ),
// // // //                       //         const SizedBox(height: 40),
// // // //                       //         const ExampleWidget(
// // // //                       //             text:
// // // //                       //                 "“Explain quantum computing in simple terms”"),
// // // //                       //         const ExampleWidget(
// // // //                       //             text:
// // // //                       //                 "“Got any creative ideas for a 10 year old’s birthday?”"),
// // // //                       //         const ExampleWidget(
// // // //                       //             text:
// // // //                       //                 "“How do I make an HTTP request in Javascript?”"),
// // // //                       //       ],
// // // //                       //     ),
// // // //                       //   ),
// // // //                       // ),
// // // //                    // ] 
                    
// // // //                       Expanded(child: ChatListView(conversations: conversations)),
// // // //                     ChatTextField(
// // // //                         controller: controller,
// // // //                         onSubmitted: (question) {
// // // //                           controller.clear();
// // // //                           FocusScope.of(context).unfocus();
// // // //                           conversations.add(Conversation(question!, ""));
// // // //                           setState(() {});
// // // //                           //post(Uri.parse("http://10.0.2.2:8000/get-response"),
// // // //                           post(Uri.parse("http://10.0.2.2:5000/send_message"),
// // // //                                   body: jsonEncode({"text": question}),
// // // //                                   headers: {"Content-Type": "application/json"})
// // // //                               .then((response) {
// // // //                             String result = jsonDecode(response.body)['response'];
// // // //                             conversations.last =
// // // //                                 Conversation(conversations.last.question, result);
// // // //                             setState(() {});
// // // //                           }
// // // //                           );
// // // //                         }),
// // // //                    const SizedBox(height: 16)
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'dart:convert';
// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;

// // // class BotScreen extends StatefulWidget {
// // //   @override
// // //   _BotScreenState createState() => _BotScreenState();
// // // }

// // // class _BotScreenState extends State<BotScreen> {
// // //   TextEditingController _textController = TextEditingController();
// // //   List<String> messages = [];

// // //   Future<void> _sendMessage(String message) async {
// // //     final response = await http.post(
// // //       Uri.parse('http://http://0.0.0.0:8000/send_message'),
// // //       headers: {'Content-Type': 'application/json'},
// // //       body: jsonEncode({'user': message}),
// // //     );
// // // print('Response from server: ${response.Answer}');
// // //     if (response.statusCode == 200) {
// // //       final jsonResponse = jsonDecode(response.body);
// // //       setState(() {
// // //         messages.add(jsonResponse['response']);
// // //       });
// // //     } else {
// // //       print('Request failed with status: ${response.statusCode}');
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('ChatBot'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           Expanded(
// // //             child: ListView.builder(
// // //               itemCount: messages.length,
// // //               itemBuilder: (context, index) {
// // //                 return ListTile(
// // //                   title: Text(messages[index]),
// // //                   subtitle: Text('ChatBot'),
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //           Padding(
// // //             padding: const EdgeInsets.all(8.0),
// // //             child: Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: TextField(
// // //                     controller: _textController,
// // //                     decoration: InputDecoration(hintText: 'Type a message'),
// // //                   ),
// // //                 ),
// // //                 IconButton(
// // //                   icon: Icon(Icons.send),
// // //                   onPressed: () {
// // //                     _sendMessage(_textController.text);
// // //                     _textController.clear();
// // //                   },
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }


// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;


// // class ChatScreen extends StatefulWidget {
// //   @override
// //   _ChatScreenState createState() => _ChatScreenState();
// // }

// // class _ChatScreenState extends State<ChatScreen> {
// //   TextEditingController _controller = TextEditingController();
// //   List<String> messages = [];

// //   Future<void> _sendMessage(String message) async {
// //     final response = await http.post(
// //       Uri.parse('http://127.0.0.1:5000/send_message'),
// //       headers: {'Content-Type': 'application/json'},
// //       body: jsonEncode({'user': message}),
// //     );

// //     if (response.statusCode == 200) {
// //       setState(() {
// //         messages.add(response.body);
// //       });
// //     } else {
// //       print('Failed to send message. Error: ${response.reasonPhrase}');
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('ChatBot App'),
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: messages.length,
// //               itemBuilder: (context, index) {
// //                 return ListTile(
// //                   title: Text(messages[index]),
// //                 );
// //               },
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Row(
// //               children: [
// //                 Expanded(
// //                   child: TextField(
// //                     controller: _controller,
// //                     decoration: InputDecoration(
// //                       hintText: 'Type your message...',
// //                     ),
// //                   ),
// //                 ),
// //                 IconButton(
// //                   icon: Icon(Icons.send),
// //                   onPressed: () {
// //                     _sendMessage(_controller.text);
// //                     _controller.clear();
// //                   },
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';


// class Message {
//   final String text;
//   final DateTime time;
//   final String messageSide;

//   Message({required this.text, required this.time, required this.messageSide});
// }


// class MindfulMateChat extends StatefulWidget {
//   @override
//   _MindfulMateChatState createState() => _MindfulMateChatState();
// }

// class _MindfulMateChatState extends State<MindfulMateChat> {
//   final List<Message> messages = [];
//   String prompt = "";
//   int count = 0;

//   Future<void> sendMessage(Map<String, dynamic> userMessage) async {
//     try {
//       print("try");
//       final response = await http.post(
//         Uri.parse('http://127.0.0.1:5000/send_message'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({'user': userMessage['text']}),
//       );

//       final responseData = jsonDecode(response.body);
//       final res = responseData.data;
//       print(responseData);
//       print(res);

//       final botResponse = Message(
//         text: res['Answer'],
//         time: DateTime.now(),
//         messageSide: 'left',
//       );

//       if (responseData['Suicidal'] == 'True') {
//         count++;
//       }

//       if (count == 3) {
//         // Handle suicidal situation
//       }

//       setState(() {
//         messages.add(botResponse);
//       });
//     } catch (error) {
//       print('Error sending message: $error');
//     }
//   }

//   void handleSendMessage() {
//     print("sending");
//   final newUserMessage = Message(
//       text: prompt,
//       time: DateTime.now(),
//       messageSide: "right",
//     );
//     messages.add(newUserMessage);
//    print(newUserMessage);
//    sendMessage({'text': prompt,});
//    print("Sent");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MindfulMate Chat'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: messages.length,
//                 itemBuilder: (context, index) {
//                   final message = messages[index];
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Row(
//                       mainAxisAlignment: message.messageSide == 'right'
//                           ? MainAxisAlignment.end
//                           : MainAxisAlignment.start,
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: message.messageSide == 'right'
//                                 ? Colors.lightBlue
//                                 : Colors.grey,
//                           ),
//                           child: Text(message.text),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     onChanged: (value) {
//                       setState(() {
//                         prompt = value;
//                       });
//                     },
//                     decoration: InputDecoration(
//                       hintText: 'Type a message...',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       ),
//                       contentPadding: EdgeInsets.all(15.0),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () => handleSendMessage(),
//                   icon: Icon(Icons.send),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Message {
  final String text;

  final MessageSide messageSide;

  Message({
    required this.text,
  
    required this.messageSide,
  });
}

enum MessageSide { left, right }

class MessageBubble extends StatelessWidget {
  final String text;

  final MessageSide messageSide;

  const MessageBubble({
    required this.text,

    required this.messageSide,
  });

  @override
  Widget build(BuildContext context) {
    // Customize appearance based on messageSide (e.g., colors, alignment)
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: messageSide == MessageSide.left
          ? const EdgeInsets.only(bottom: 16.0, right: 16.0)
          : const EdgeInsets.only(bottom: 16.0, left: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: messageSide == MessageSide.left ? Colors.grey[200] : Colors.blue[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: TextStyle(color: Colors.black)),
          const SizedBox(height: 4.0),
          
        ],
      ),
    );
  }
}

class MindfulMateChat extends StatefulWidget {
  const MindfulMateChat({Key? key}) : super(key: key);

  @override
  State<MindfulMateChat> createState() => _MindfulMateChatState();
}

class _MindfulMateChatState extends State<MindfulMateChat> {
  final _messageController = TextEditingController();
  String _response = "";
  bool _isLoading = false;
  List<Message> messages = [];
  int count = 0; // Track suicidal responses

  Future<void> _sendMessage() async {
    setState(() {
      _isLoading = true;
      _response = ""; // Clear potential error message
    });

    try {
      final response = await http.post(
        Uri.parse('http://152.58.52.165:5000/send_message'),
        body: jsonEncode({'user': _messageController.text}),
        headers: {'Content-Type': 'application/json'},
       
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final botResponse = Message(
          text: data['Answer'],

          
          messageSide: MessageSide.left,
        );
        messages.add(botResponse);

        if (data['Suicidal'] == 'True') {
          count++;
          if (count == 3) {
            // Implement logic to handle potential suicide risk
            // (e.g., prompt for contact information, direct to resources)
            // You may need to consider UI elements and user interactions for this part.
          }
        }

        setState(() {
          _messageController.clear();
        });
      } else {
        // Handle errors gracefully
        print('Error sending message: ${response.statusCode}');
        setState(() {
          _isLoading = false;
          _response = "Error: ${response.statusCode}";
        });
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     

      appBar: AppBar(
        title: const Text('Chatbot'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                Message message = messages[index];
                return MessageBubble(
                  text: message.text,
                  
                  messageSide: message.messageSide,
                );
              },
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _messageController,
                  enabled: !_isLoading,
                  decoration: InputDecoration(
                    hintText: 'Enter your message...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.all(16.0),
                  ),
                ),
              ),
              IconButton(
                onPressed: _isLoading ? null : _sendMessage,
                icon: _isLoading ? const CircularProgressIndicator() : const Icon(Icons.send),
              ),
            ],
          ),
          // Handle potential error message display
          if (_response.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.red[100],
              child: Text(
                _response,
                style: TextStyle(color: Colors.red),
              ),
            ),
        ],
      ),
    );
  }
}
