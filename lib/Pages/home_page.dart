import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String name = "-";
  List<String> names = [];

  @override
  initState() {
    super.initState();

    // name = await getName();

    // getName().then((value) {
    //   name = value;
    //   setState(() {});
    // });

    fetchDataFinal();

  }

  Future<void> fetchDataFinal() async{
    names = await getData();
    setState(() {

    });
  }



  Future<String> getName() async {
    return Future.delayed(Duration(seconds: 4), () {
      return "Heroes";
    });
  }

  Future<List<String>> getData () async {
    return Future.delayed(Duration(seconds: 3),(){
      return ["Juan", "Cristian", "Jaime", "Rolando", "Luis"];
    });
  }

  Future listsuper() async {

    return Future.delayed(Duration(seconds: 7),(){
       return [
         {
           "name": "Molecule Man",
           "age": 29,
           "secretIdentity": "Dan Jukes",
           "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
         },
         {
           "name": "Madame Uppercut",
           "age": 39,
           "secretIdentity": "Jane Wilson",
           "powers": [
             "Million tonne punch",
             "Damage resistance",
             "Superhuman reflexes"
           ]
         },
         {
           "name": "Hulk",
           "age": 30,
           "secretIdentity": "Dan Jukes",
           "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
         },
         {
           "name": "Iron man",
           "age": 30,
           "secretIdentity": "Dan Jukes",
           "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
         },
       ];
    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Futures"),
        actions: [
          FutureBuilder(
            future: getName(),
            builder: (BuildContext context, AsyncSnapshot snap){
              if(snap.hasData){
                String _name = snap.data;
                return Text(_name);
              }
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: listsuper(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          // print(snapshot.hasData);
          // print(snapshot.connectionState);
           print(snapshot.data);

          if(snapshot.hasData){
            List<Map<String,dynamic>> _lisuper= snapshot.data;
            return ListView.builder(
              itemCount: _lisuper.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: ListTile(
                    title: Text(_lisuper[index]["name"],),
                  ),
                );
              },
            );
          }

          return const Center(child: CircularProgressIndicator());


        },
      ),
    );
  }
}