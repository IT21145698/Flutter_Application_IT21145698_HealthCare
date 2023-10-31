import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';


void main() {
  runApp(const ChatGPTApp());
}

class ChatMessage {
  final String text;
  final bool isUser;
  ChatMessage(this.text, this.isUser);
}

class ChatProvider extends ChangeNotifier {
  List<ChatMessage> get _messages => [];

  List<ChatMessage> get messages => _messages;

  void addUserMessage(String text) {
    _messages.add(ChatMessage(text, true));
    _getChatGPTResponse(text);
  }

  Future<void> _getChatGPTResponse(String message) async {
    // Replace with your OpenAI API key
    const apiKey = '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';
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/engines/davinci/completions'),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'prompt': message,
        'max_tokens': 50, // Adjust max tokens as needed
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final reply = data['choices'][0]['text'];
      _messages.add(ChatMessage(reply, false));
      notifyListeners();
    } else {
      throw Exception('Failed to send message to ChatGPT');
    }
  }
}

class ChatGPTApp extends StatelessWidget {
  const ChatGPTApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT Flutter',
      home: ChangeNotifierProvider(
        create: (context) => ChatProvider(),
        child: ChatScreen(),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatGPT Flutter'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messages[index];
                return ListTile(
                  title: Text(
                    message.text,
                    textAlign: message.isUser ? TextAlign.right : TextAlign.left,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textController,
              onSubmitted: (text) {
                chatProvider.addUserMessage(text);
                _textController.clear();
              },
              decoration: InputDecoration(
                labelText: 'Type a message...',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    chatProvider.addUserMessage(_textController.text);
                    _textController.clear();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
