import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quick_chat_app/service/socket_service.dart';
import 'package:quick_chat_app/model/chat.dart';

class MessageView extends StatelessWidget {
  final Chat chat;
  MessageView({Key? key, required this.chat}) : super(key: key);
  final f = DateFormat('hh:mm a');

  @override
  Widget build(BuildContext context) {
    if (chat.userId == null) {
      return Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          chat.message ?? '',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ));
    }

    var size = MediaQuery.of(context).size;
    bool isSendByUser = chat.userId == SocketService.userId;

    return Align(
      alignment: isSendByUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.fromLTRB(8, 4, 8, 0),
        child: Column(
          crossAxisAlignment:
              isSendByUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              (chat.userName ?? ''),
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Container(
                padding: const EdgeInsets.all(8),
                constraints: BoxConstraints(
                  maxWidth: size.width * 0.5,
                  minWidth: size.width * 0.01,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isSendByUser ? Colors.blue : Colors.grey.shade500),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!isSendByUser)
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: CircleAvatar(
                          child: Icon(Icons.person, size: 10),
                          radius: 8,
                        ),
                      ),
                    Flexible(
                      child: Text(
                        chat.message ?? 'none',
                        style: const TextStyle(color: Colors.white),
                        softWrap: true,
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 4),
            Text(
              f.format(DateTime.parse(chat.time ?? '')),
              style: const TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
