import 'package:flutter/material.dart';
import 'package:flutterapp/colors.dart';

class ChatTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String?) onSubmitted;

  const ChatTextField(
      {super.key, required this.controller, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
 color:Colors.white,
          borderRadius: BorderRadius.circular(20),
         border: Border.all( color: Color.fromARGB(255, 206, 206, 206), width: .8)
        ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Flexible(
            child: TextField(
              controller: controller,
              cursorColor: Color.fromARGB(255, 206, 206, 206),
              decoration: const InputDecoration(border: InputBorder.none,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                onSubmitted(controller.text);
              },
              style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 228, 228, 228),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13))),
              icon: const Icon(Icons.send_outlined),
            ),
          )
        ],
      ),
    );
  }
}