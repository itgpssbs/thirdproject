import 'package:flutter/material.dart';
import 'package:thirdproject/model/monsterTruck.dart';

class DetailPage extends StatelessWidget {
  final MonsterTruck monsterTruck;
  // const DetailPage({Key? key}): super(key:key);
  const DetailPage({Key? key, required this.monsterTruck}): super(key:key);

  @override
  Widget build(BuildContext context){
    // TODO : implemend build
    return Scaffold(
      body: SafeArea (
        child: SingleChildScrollView(
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/1.jpg'),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  monsterTruck.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text(monsterTruck.schedule),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.timeline),
                        SizedBox(height: 8.0),
                        Text(monsterTruck.schedule),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.favorite),
                        SizedBox(height: 8.0),
                        Text(monsterTruck.numEpisodes.toString()),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  "Kisah berawal dari perusahaan minyak dan gas Terravex yang tengah melakukan proyek pengeboran di wilayah Amerika Serikat. Proyek pengeboran ini sayangnya membuat kehidupan bawah tanah terancam. Ini termasuk ancaman terhadap makhluk monster bawah tanah, dan menyebabkan tiga monster bawah tanah keluar dari habitatnya.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height:150,
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: monsterTruck.imageUrls.map((url){
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:Image.network(url),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
