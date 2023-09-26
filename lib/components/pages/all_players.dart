import 'package:flutter/material.dart';

class AllPlayers extends StatefulWidget {
  final List<Map<String, dynamic>> playersList;
  const AllPlayers({Key? key, required this.playersList}) : super(key: key);

  @override
  State<AllPlayers> createState() => _AllPlayersState();
}

class _AllPlayersState extends State<AllPlayers> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> playersList = widget.playersList;
    print('صفحة جميع اللاعبين تسلم عليك وتقول');
    print(playersList);
    return Scaffold(
      appBar: AppBar(
        title: const Text('لاعبين نادي الرائد'),
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
          child: Column(
            children: [
              Container(
                height: 90.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/first_olayr.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10), // تباعد بين الصورة والنص

              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2), //عدد اللاعبين بصف
                  itemCount: playersList.length,

                  // يعني بيلف على اللست كلها وبيعرض الايتم نفسه داخل البوكس الي بنسويه
                  itemBuilder: (context, index) {
                    // حق نسهل لنفسنا نحفظ الماب الحالي في ماب ثاني
                    Map<String, dynamic> currentPlayer = playersList[index];

                    return GestureDetector(
                      onTap: () {
                        print(currentPlayer);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.width * 0.15,
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Builder(builder: (context) {
                                    String image = currentPlayer['Image'];
                                    if (image.contains('http')) {
                                      return Image.network(
                                        currentPlayer['Image'],
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.12,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.12,
                                        fit: BoxFit.contain,
                                      );
                                    } else {
                                      return Image.asset(
                                        currentPlayer['Image'],
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        fit: BoxFit.fitHeight,
                                      );
                                    }
                                  }),
                                ),
                                Text(
                                  currentPlayer['POS'],
                                ),
                                Text(
                                  currentPlayer['Name'],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
