import 'package:flutter/material.dart';
import 'package:whatsapp_speed_code/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          DefaultTabController(length: 4, child: MyHomePage(title: 'WhatsApp')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.chat),
      ),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xff075e54),
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 3.0,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt_rounded),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        itemExtent: 90.0,
        children: contentData,
      ),
    );
  }
}

class ScreenContent extends StatelessWidget {
  final String? imgUrl;
  final String? name;
  final String? message;
  final String? time;
  const ScreenContent(
      {Key? key, this.imgUrl, this.name, this.message, this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  imgUrl!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              name!,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
            subtitle: Text(message!),
            trailing: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      time!,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600),
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 85, right: 10),
          child: Divider(
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}
