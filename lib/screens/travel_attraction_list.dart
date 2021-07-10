import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_around_app/models/travel_model.dart';
import 'package:travel_around_app/providers/travel_data_provider.dart';

class TravellistScreen extends StatefulWidget {
  const TravellistScreen({Key? key}) : super(key: key);

  @override
  _TravellistScreenState createState() => _TravellistScreenState();
}

class _TravellistScreenState extends State<TravellistScreen> {

  @override
  // void initState() {
  //   super.initState();
  //   final mdl = Provider.of<TravelDataProvider>(context, listen: false);
  //   mdl.loadTravel();
  // }

  @override
  Widget build(BuildContext context) {
    // final mdl = Provider.of<TravelDataProvider>(context);
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            padding: EdgeInsets.all(25),
            itemCount: listOfAttractions.length,
            itemBuilder: (context, index) {
              TravelModel travel =  listOfAttractions [index];
              return TravelViewCard(
                  title: travel.title,
                  shortDetail: travel.shortDetail,
                  description: travel.description,
                  image: travel.image);
            }));
  }
}

class TravelViewCard extends StatelessWidget {
  final String title;
  final String image;
  final String shortDetail;
  final String description;

  TravelViewCard(
      {required this.shortDetail,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(54, 54, 54, 1)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              shortDetail,
              style: TextStyle(color: Color.fromRGBO(60, 60, 60, 1)),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              description,
              style: TextStyle(color: Color.fromRGBO(120, 120, 120, 1)),
            )
          ],
        ),
      ),
    );
  }
}
