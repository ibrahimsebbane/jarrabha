import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.black, secondary: Colors.white),
          textTheme: const TextTheme(titleMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
      home: const MyHomePage(title: 'Jarrabha'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Top bar
                  ListTile(
                    title: Row(children: [
                      const Icon(
                        Icons.pin_drop_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        "Tlemcen, Algeria",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const Icon(Icons.keyboard_arrow_down)
                    ]),
                    trailing: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.filter_list),
                        onPressed: () {
                          // Your onPressed logic here
                        },
                      ),
                    ),
                  ),
                  // Brands
                  Text("Marques", style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: TextButton(
                            child: const Text("All"),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: TextButton(
                            child: AnyLogo.auto.bmw.image(),
                            onPressed: () {
                              // Your onPressed logic here
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: TextButton(
                            child: AnyLogo.auto.tesla.image(),
                            onPressed: () {
                              // Your onPressed logic here
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: TextButton(
                            child: AnyLogo.auto.honda.image(),
                            onPressed: () {
                              // Your onPressed logic here
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: TextButton(
                            child: AnyLogo.auto.mercedesBenz.image(),
                            onPressed: () {
                              // Your onPressed logic here
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: TextButton(
                            child: AnyLogo.auto.ferrari.image(),
                            onPressed: () {
                              // Your onPressed logic here
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            // Body
            SizedBox(
              height: MediaQuery.of(context).size.height - 150,
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Available cars
                    Text("Véhicules disponibles", style: Theme.of(context).textTheme.titleMedium),
                    Column(
                      children: [
                        SizedBox(
                          height: 400,
                          child: GridTile(
                            footer: GridTileBar(
                                backgroundColor: Colors.black87,
                                leading: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 2),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(
                                        width: 150,
                                        child: Text(
                                          "BMW XM",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 15, color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                          textWidthBasis: TextWidthBasis.longestLine,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.star_rate_sharp),
                                          RichText(
                                            text: const TextSpan(
                                                style: TextStyle(fontSize: 15),
                                                text: "4,3 ",
                                                children: [TextSpan(text: "(150 votes)", style: TextStyle(fontSize: 10))]),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                title: const Text(''),
                                trailing: const Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [Text("12000 DA/J", style: TextStyle(color: Colors.white, fontSize: 18))],
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Hero(
                                tag: 1,
                                child: FadeInImage(
                                  // placeholder: AssetImage('assets/images/store-placeholder.png'),
                                  placeholder: AssetImage('assets/images/car.bmp'),
                                  image: NetworkImage(
                                      "https://prod.cosy.bmw.cloud/bmwweb/cosySec?COSY-EU-100-7331cqgv2Z7d%25i02uCaY3MuO2kOHUtWPfbYfQGsd10tLhu1XzWVo7puMLWFmdkAj5DOP7tFJZ8XgY1nTNIowJ4HO3zkyXq%25sGM8snGhMQSk%2508Xc9Vo74gijPNF1VgxNJ0%25lI2oub5imC2yRCzXeTt%25ViPRKVZVYV2GWh1DMztzOUeqVYDafadvjmztYRSJtP67aftxdTgDw1RSfWQluq%25VxdSeZs3EuzWQdjc0kN3aeZQ6KAn6XRjcZwBO5Arx6Kc%252yG84WwBKupC3PFe%252B3iEXVIjup2XHNR4v63iprJkRaGwXHi4TPFB9%25rJHFlMIxou4TJIsDvyL3FlTv0YAHyXIslGAtWjCrv0s9OfUvE4GA0ogSElNF9OALUdNckIogOybQ30nvLUgChZXC5GybUEqcPp89ChbNmKMrPoEqhk7BDzMLNmqn12cCDyk7m5VpK6YCn178zilWtE5V1Pa7RSfN8zVMR1KMSkPazDxVBPdnMRaYWz2%25Q5DxRteaESZ8YWxfjpLkcPteWS6iCBKMfjedwHJQBDS6jQ%25JTP2Ydw6ZuTlhptQ%25wc3lLMifZu%25KXsEPHSc3uBr0PwJdKX324AbMTQBrXpFOhslZ24riIpeqscpF4Hv4Dd0KiIFJGFtyABHvIT9IJ4O2JGvlov%25igpT9GsLGpQUilo90y%25AbbHsLoACP4mhJ0yrO72VGdIQABNIqab9FSrW1vNyXq3B4lxTjHMDdF"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 400,
                          child: GridTile(
                            footer: GridTileBar(
                                backgroundColor: Colors.black87,
                                leading: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 2),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(
                                        width: 150,
                                        child: Text(
                                          "308 SW",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 15, color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                          textWidthBasis: TextWidthBasis.longestLine,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.star_rate_sharp),
                                          RichText(
                                            text: const TextSpan(
                                                style: TextStyle(fontSize: 15),
                                                text: "4,0 ",
                                                children: [TextSpan(text: "(400 votes)", style: TextStyle(fontSize: 10))]),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                title: const Text(''),
                                trailing: const Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [Text("10000 DA/J", style: TextStyle(color: Colors.white, fontSize: 18))],
                                )),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Hero(
                                tag: 1,
                                child: FadeInImage(
                                  // placeholder: AssetImage('assets/images/store-placeholder.png'),
                                  placeholder: AssetImage('assets/images/car.bmp'),
                                  image: NetworkImage(
                                      "https://cdn.autodiscount.fr/cdn-autodiscount/storage/cars/28433/peugeot_22308gtpackhb3fbc_teinte-metallisee-gris-artense.png"),
                                  // fit: BoxFit.fill,
                                  height: 300,
                                  width: 400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
