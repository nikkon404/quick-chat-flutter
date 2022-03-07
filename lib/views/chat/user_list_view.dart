import 'package:flutter/material.dart';
import 'package:quick_chat_app/service/socket_service.dart';

class UserListView extends StatelessWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: StreamBuilder(
        stream: SocketService.userResponse,
        builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return const Center(child: LinearProgressIndicator());
          }

          if (snapshot.data == null) {
            return const SizedBox();
          }

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: (snapshot.data ?? [])
                  .map((e) => Container(
                        margin: const EdgeInsets.only(right: 6),
                        child: Chip(
                            avatar: const Icon(Icons.person),
                            elevation: 2,
                            label: Text(e)),
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
