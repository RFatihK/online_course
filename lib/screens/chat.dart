import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          _buildHeader(),
          _buildChats(),
        ],
      ),
    );
  }

  _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 5),
      child: Column(
        children: [
          const Text(
            "Chat",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          CustomTextBox(
            hint: "Search",
            prefix: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  _buildChats() {
    return ListView(
      padding: const EdgeInsets.only(top: 10),
      shrinkWrap: true,
      children: List.generate(
        chats.length,
        (index) => ChatItem(
          chats[index],
        ),
      ),
    );
  }
}
