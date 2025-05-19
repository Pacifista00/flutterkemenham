import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final List<_Message> _messages = [];
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> _chatData = [];

  @override
  void initState() {
    super.initState();
    _loadChatData();
  }

  Future<void> _loadChatData() async {
    final String jsonString = await rootBundle.loadString(
      'assets/chatdata/chatdata.json',
    );
    final List<dynamic> jsonResponse = json.decode(jsonString);
    setState(() {
      _chatData = jsonResponse.cast<Map<String, dynamic>>();
    });
  }

  void _sendMessage(String text) {
    if (text.trim().isEmpty) return;

    setState(() {
      _messages.add(_Message(text: text, isUser: true));
      _messages.add(_Message(text: _getBotResponse(text), isUser: false));
    });

    _controller.clear();
  }

  String _getBotResponse(String userMessage) {
    final msg = userMessage.toLowerCase();

    for (final item in _chatData) {
      final questions = (item['questions'] as List).cast<String>();
      for (final question in questions) {
        if (msg.contains(question.toLowerCase())) {
          return item['answer'] as String;
        }
      }
    }

    return 'Maaf, saya belum mengerti. Coba tanyakan hal lain.';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Bot'),
        foregroundColor: Colors.white, // untuk warna teks dan ikon
        backgroundColor: const Color(0xFF242458), // untuk latar belakang AppBar
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return Align(
                  alignment:
                      msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color:
                          msg.isUser
                              ? const Color(0xFFE3C00A)
                              : const Color(0xFF242458),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      msg.text,
                      style: TextStyle(
                        color: msg.isUser ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            color: Colors.grey.shade200,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: _sendMessage,
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Ketik pesan...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () => _sendMessage(_controller.text),
                  color: const Color(0xFFE3C00A),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Message {
  final String text;
  final bool isUser;

  _Message({required this.text, required this.isUser});
}
