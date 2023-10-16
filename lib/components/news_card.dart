import '../screens/news_full_information.dart';
import 'package:flutter/material.dart';

class MyNewsCard extends StatefulWidget {
  final String title;
  final String img;
  const MyNewsCard({
    super.key,
    required this.title,
    required this.img,
  });

  @override
  State<MyNewsCard> createState() => _MyNewsCardState();
}

class _MyNewsCardState extends State<MyNewsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Image.network(
                      fit: BoxFit.contain,
                      widget.img,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset('assets/placeholder.PNG');
                      },
                    ),
                  );
                },
              );
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.shortestSide * 0.33,
              width: MediaQuery.of(context).size.shortestSide * 0.33,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  fit: BoxFit.cover,
                  widget.img,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset('assets/placeholder.PNG');
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
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
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FullNews(
                            img: widget.img,
                            title: widget.title,
                          ),
                        ),
                      );
                    },
                    child: const Text('المزيد'),
                  ),
                ],
              ),
            ),
          ),
        ].reversed.toList(),
      ),
    );
  }
}
