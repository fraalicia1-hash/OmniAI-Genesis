import 'package:flutter/material.dart';
import '../services/api_service.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController controller = TextEditingController();
  List<String> messages = [];

  void send() async {
    String message = controller.text;

    setState(() {
      messages.add("Moi : $message");
    });

    String answer = await ApiService.sendMessage(message);

    setState(() {
      messages.add("OmniAI : $answer");
    });

    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OmniAI Chat"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Écris un message...",
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: send,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
