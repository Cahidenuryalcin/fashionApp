// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                //bağlı olduğu widgeta git, ordaki değişkeni oku demiş oluyoruz
                ),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 4,
            child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 100,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/dress.jpg",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LAMINATED",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Louis Vuitton",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width - 170,
                            child: Text(
                              "One button V-neck sling long-sleeved waist female stitching dress",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "Montserrat",
                                  color: Colors.grey.shade400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$6500",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 22,
                          ),
                        ),
                        Container(
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.brown,
                            child: Icon(
                              Icons.arrow_right_outlined,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height/2,
          left: 50,
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(child: Text("LAMINATED", style: TextStyle(fontFamily: "Montserrat", color: Colors.white, fontWeight: FontWeight.bold),)),
                Icon(Icons.arrow_forward_ios,color: Colors.white, size: 14,)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

//animasyon : hero animasyon deniliyor
// bir containerin tıklanma özelliğini kazanması iiçin InkWell widgeti ile kaplanabilir
//inkvelin ontap parametresi mevcut
