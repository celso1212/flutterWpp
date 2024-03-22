import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChatApp(),
  ));
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color.fromARGB(255, 76, 175, 80),
          
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'Chats'), 
              Tab(text: 'Status'), 
              Tab(text: 'Call'), 
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return ListTile(
                    leading: 
                    CircleAvatar(backgroundColor: Color.fromARGB(255, 76, 175, 80),),
                    title: Text('JOÃO'),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('10 Nov'),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (index == 1) {
                  return ListTile(
                    leading: 
                    CircleAvatar(backgroundColor: Color.fromARGB(255, 76, 175, 80),),
                    title: Text('Matheus'),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('10 Nov'),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (index == 2) {
                  return ListTile(
                    leading: 
                    CircleAvatar(backgroundColor: Color.fromARGB(255, 76, 175, 80),),
                    title: Text('Caio'),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('10 Nov'),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (index == 3) {
                  return ListTile(
                    leading: 
                    CircleAvatar(backgroundColor: Color.fromARGB(255, 76, 175, 80),),
                    title: Text('Henrique'),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('10 Nov'),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                    leading: 
                    CircleAvatar(backgroundColor: Color.fromARGB(255, 76, 175, 80),),
                    title: Text('Joana'),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('10 Nov'),
                      ],
                    ),
                  );
                }
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: 5,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
          },
          child: Icon(Icons.message),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
