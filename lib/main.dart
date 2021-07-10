import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:travel_around_app/providers/travel_data_provider.dart';
import 'package:travel_around_app/screens/travel_attraction_list.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providers,
      child: MaterialApp(
        title: "Travel App",
        theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.cyanAccent)
        ),
        home:TravellistScreen(),
      ),
    );
  }
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<TravelDataProvider>(create: (_) => TravelDataProvider())
];
