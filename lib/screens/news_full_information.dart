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
        actions: [
          ClipOval(
            child: Image.asset('assets/logo.png'),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 124, 40, 40),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              fit: BoxFit.cover,
              widget.img,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset('assets/placeholder.PNG');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              softWrap: true,
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
