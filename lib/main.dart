import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SehirSecmeWidget(),
    );
  }
}

class SehirSecmeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SehirSecmeState();
}

class SehirSecmeState extends State<SehirSecmeWidget> {
  var sehir = ["Ankara", "istanbul", "İzmir", "Van"];
  var secilenSehir="Ankara";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şehir Seçme Uygulaması"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: sehir.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: secilenSehir,
              onChanged: (String value) {
                setState(() {
                  secilenSehir = value;
                });
              }, 
            ),
            Text("Seçilen Sehir: "+secilenSehir )
          ],
        ),
      ),
    );
  }
}
