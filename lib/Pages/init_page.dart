import 'package:flutter/material.dart';
import 'package:untitled5_clase8/widget/item_slider_widget.dart';

import '../data/data.dart';
import '../widget/item_category_widget.dart';
import 'detail_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  bool isLoading = true;

  Data data = Data();
  List<Map<String, dynamic>> listData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    initData();

  }

  Future<void> initData() async {
    listData = await data.fetchData();
    //isLoading = false;
    setState(() {

    });
  }






  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.47,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(42),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://imageio.forbes.com/specials-images/imageserve/627e31007be5959e6359a3ab/Oia--Santorini-Island--Cyclades--Greece--Twilight--Houses-and-churches-after-sunset/960x0.jpg?format=jpg&width=960"))),
              child: SafeArea(
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Jorge",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          ),
                          Text(
                            "Where do you want to go?",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 14.0),
                                hintText: "where are your going?",
                                filled: true,
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.85),
                                    fontSize: 14.0),
                                fillColor: Colors.white.withOpacity(0.4),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white.withOpacity(0.85),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.66),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14.0),
                                bottomRight: Radius.circular(42.0))),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Santorini, Greece",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Recomendation",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                    children: List.generate(
                                  5,
                                  (index) => Icon(
                                    Icons.star,
                                    color: Color(0xffFEAA36),
                                    size: 22.0,
                                  ),
                                )),
                                Row(
                                  children: [
                                    Text(
                                      "4.3 ",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "(2323 reviews)",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12.0),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot places",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff2E3033),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xff3681D8),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 14.0,),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      // children: List.generate(
                      //   listData.length,
                      //   (index) => ItemSliderWidget(
                      //     onMandarina: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => DetailPage()));
                      //     },
                      //   ),
                      // ),
                      children: listData
                          .map(
                            (matasquita) => ItemSliderWidget(
                               place: matasquita,
                          onMandarina: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  data: matasquita,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 14.0,),

                  FutureBuilder(
                    future: data.fetchData(),
                    builder: (BuildContext context, AsyncSnapshot snap) {
                      if (snap.hasData) {
                        List<Map<String, dynamic>> list = snap.data;
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: list
                                .map(
                                  (matasquita) => ItemSliderWidget(
                                place: matasquita,
                                onMandarina: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                        data: matasquita,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                                .toList(),
                          ),
                        );
                      }
                      return CircularProgressIndicator();
                    },
                  ),













                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categorias",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff2E3033),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff3681D8),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 14.0,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        ItemCategoryWidget(),
                        ItemCategoryWidget(),
                        ItemCategoryWidget(),
                        ItemCategoryWidget(),
                        ItemCategoryWidget(),

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
