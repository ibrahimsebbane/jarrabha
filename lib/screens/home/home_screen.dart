import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import './widgets/brand_widget.dart';
import './widgets/single_car_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                // Real size it takes is 145, the additional 5 is maybe for prevention
                height: 150,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Top bar
                    ListTile(
                      contentPadding: EdgeInsets.zero,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Marques", style: Theme.of(context).textTheme.titleMedium),
                    ),
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
                          Brand(logo: AnyLogo.auto.bmw.image()),
                          Brand(logo: AnyLogo.auto.tesla.image()),
                          Brand(logo: AnyLogo.auto.honda.image()),
                          Brand(logo: AnyLogo.auto.mercedesBenz.image()),
                          Brand(logo: AnyLogo.auto.ferrari.image()),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              // Body
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Available cars
                    Text("Véhicules disponibles", style: Theme.of(context).textTheme.titleMedium),
                    const Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleCarWidget(
                              label: "BMW XM",
                              cost: "1200",
                              rate: "3,2",
                              vote: "400",
                              link:
                                  "https://www.bmwedison.com/assets/stock/colormatched_01/transparent/1280/cc_2023bms36_01_1280/cc_2023bms360003_01_1280_a96.png",
                            ),
                            SingleCarWidget(
                              label: "308 SW",
                              cost: "1000",
                              rate: "4,0",
                              vote: "231",
                              link:
                                  "https://cdn.autodiscount.fr/cdn-autodiscount/storage/cars/28433/peugeot_22308gtpackhb3fbc_teinte-metallisee-gris-artense.png",
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
