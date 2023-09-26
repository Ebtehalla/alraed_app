import 'package:flutter/material.dart';

class FullNews extends StatefulWidget {
  final String title;
  final String category;
  final String img;
  final String content;
  final String time;
  const FullNews({
    super.key,
    required this.title,
    required this.category,
    required this.img,
    required this.content,
    required this.time,
  });

  @override
  State<FullNews> createState() => _FullNewsState();
}

class _FullNewsState extends State<FullNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text(''),
        actions: [
          ClipOval(
            child: Image.asset('assets/logo.png'),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 124, 40, 40),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  child: Image.network(
                    fit: BoxFit.contain,
                    widget.img,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset('assets/placeholder.PNG');
                    },
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Container(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(widget.time.toString()),
                        Text(
                          widget.category,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 12),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    widget.title,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(widget.content),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
