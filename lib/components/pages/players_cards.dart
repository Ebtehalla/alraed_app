import 'package:alradi_app/components/pages/all_players.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class playersCard extends StatefulWidget {
  const playersCard({Key? key}) : super(key: key);

  @override
  State<playersCard> createState() => _playersCardState();
}

List<Map<String, dynamic>> playersList = [
  {
    "Image": "assets/khalad.png",
    "Name": "خالد الخثلان",
    "POS": "دفاع",
  },
  {
    "Image": "assets/raid.png",
    "Name": " رائد الغامدي",
    "POS": "مهاجم",
  },
  {
    "Image": "assets/sultan.png",
    "Name": "سلطان الفرحان",
    "POS": "وسط",
  },
  {
    "Image": "assets/ad2.png",
    "Name": "عبدالله الفهد",
    "POS": "دفاع",
  },
  {
    "Image": "assets/karam.png",
    "Name": "كريم البركاوي",
    "POS": "مهاجم",
  },
  {
    "Image": "assets/mouhmad_aldosry.png",
    "Name": "محمد الدوسري",
    "POS": "وسط",
  },
  {
    "Image": "assets/mouhmad-salm.png",
    "Name": "محمد سالم",
    "POS": "دفاع",
  },
  {
    "Image": "assets/mouhmad_fozir.png",
    "Name": "محمد فوزير",
    "POS": "مهاجم",
  },
  {
    "Image": "assets/mansour3.png",
    "Name": "منصور الحربي",
    "POS": "دفاع",
  },
  {
    "Image": "assets/uhih.png",
    "Name": "يحيى الشهري",
    "POS": "وسط",
  },
  {
    "Image": "assets/aoud.png",
    "Name": "عوض خميس",
    "POS": "دفاع",
  },
  {
    "Image": "assets/ahmad_alrhuli.png",
    "Name": "احمد الرحيلي",
    "POS": "حارس",
  },
  {
    "Image": "assets/alghtina.png",
    "Name": "عبدالمحسن القحطاني",
    "POS": "وسط",
  },
  {
    "Image": "assets/mansour_albishy.png",
    "Name": "منصور البيشي ",
    "POS": "وسط",
  },
  {
    "Image": "assets/yhiti_bashy.png",
    "Name": "يحيى سنبل",
    "POS": "دفاع",
  },
  {
    "Image": "assets/naif_hazizy.png",
    "Name": "نايف هزازي",
    "POS": "دفاع",
  },
  {
    "Image": "assets/alxandr.png",
    "Name": "ألكسندرو ميتريتا",
    "POS": "هجوم",
  },
  {
    "Image": "assets/joluim.png",
    "Name": "جوليو تافاريس",
    "POS": "هجوم",
  },
  {
    "Image": "assets/bablo.png",
    "Name": "بابلو سانتوس",
    "POS": "دفاع",
  },
  {
    "Image": "assets/salifo.png",
    "Name": "سيليفيو لونغ",
    "POS": "حارس",
  },
  {
    "Image": "assets/damuin.png",
    "Name": "داميان يوكوفيتش",
    "POS": "وسط",
  },
  {
    "Image": "assets/algbrin.png",
    "Name": "عبدالعزيز الجبرين",
    "POS": "وسط",
  },
  {
    "Image": "assets/couch.png",
    "Name": "ماريوس سوموديكا",
    "POS": "مدرب",
  },
];

// ignore: camel_case_types
class _playersCardState extends State<playersCard> {
  /*
  لنتفرض ان هذي صفحة اللاعبين
  وعندنا لست من اللاعبين سواء اسمها وصور والخخ
  على طريقة  map
  players = [
    {
      image : 'https......',
      name : 'عثمان عمار العمار',
      number : '77',
      },
    {
      image : 'https......',
      name : 'احمد ....',
      number : '12',
      },
    {
      image : 'https......',
      name : 'عبيد الحربي', :D
      number : '77', 
      POS : 'حارس... وهيك طيب'
      },
  ]
مايحتاج رقمه احس يكفي اسمه واذا مهاجم ولا مدافع وكذا بس 
اوكي اهم شي شسمه يعني مثال يس
  وحابين نعرضهم في لسته مثل مارسمت لك قبل شوي 
   // حسيت بيطلع صعب لو سيده كتبت
   // Map < String , dynamic>
   يعني راح يكون عندنا map
   المتغير الي على اليسار نوعه سترنق
   الي عاليمين اي شي dynamic
   يعني عادي سترنق عادي انتجر عادي bool
   اي شي ببالك
   حتى null عادي
   الماب الواحد عباره عن لاعب واحد مثل فوق هنا
   {
      image : 'https......',
      name : 'عبيد الحربي', :D
      number : '77', 
      POS : 'حارس... وهيك طيب'
      },

      وهذول المابات ( اللاعبين ) بيكونون داخل لست
      ف الناتج :
      الى هنا تمام ؟يسس فهمت =د
      تمام
      كذا كود تبع لاعبين واكرره ع حسب عددهم صح 
      احنا ماراح نكرر
      هو مفروض يكون يعطونك من وين تجيبين اللاعبين بالضبط
      بس احنا بنسرق من الموقع
      ويتت 
   */
  /*
  طيب الحين عندنا لسته
  playersList
  وفيها ماب كل ماب عباره عن لاعب
  وحابين نعرض اللسته هذي داخل widget
  مثل الي رسمته لاني رسام ماهر
   */
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade100,
              ),
              height: MediaQuery.of(context).size.height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: playersList.length,
                itemBuilder: (context, index) {
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
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          // height: 200,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Builder(builder: (context) {
                                  String image = currentPlayer['Image'];
                                  if (image.contains('http')) {
                                    return Image.network(
                                      currentPlayer['Image'],
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.15,
                                      fit: BoxFit.contain,
                                    );
                                  } else {
                                    return Image.asset(
                                      currentPlayer['Image'],
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      fit: BoxFit.fitHeight,
                                    );
                                  }
                                }),
                              ),
                              Text(currentPlayer['POS']),
                              Text(currentPlayer['Name']),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              AllPlayers(playersList: playersList),
                        ),
                      );
                    },
                    child: const Text(
                      'عرض المزيد',
                      style: TextStyle(color: Color.fromARGB(255, 155, 47, 40)),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
