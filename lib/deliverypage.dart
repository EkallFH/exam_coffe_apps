import 'package:flutter/material.dart';
import 'package:examcoffeshop/orderpage.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'images/maps.png',
                    width: 400,
                    height: 850,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.keyboard_arrow_left,
                              size: 26,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const OrderPage(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.gps_fixed,
                              size: 26,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                      offset: const Offset(90, 170),
                      child: Image.asset(
                        'images/rute.png',
                      )),
                  Transform.translate(
                    offset: const Offset(75, 215),
                    child: const Icon(
                      Icons.location_on,
                      color: Color.fromRGBO(198, 124, 78, 1),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(240, 315),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.delivery_dining_outlined,
                        color: Color.fromRGBO(198, 124, 78, 1),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, 520),
                        child: Container(
                          height: 500,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 530),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          child: Center(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Divider(
                                    thickness: 5,
                                    color: Color.fromRGBO(234, 234, 234, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  '10 minutes left',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Delivery to',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(128, 128, 128, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: SizedBox(
                                          width: 5,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Jl. Kpg Sutoyo',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 20,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.all(8),
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                54, 192, 126, 1),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      );
                                    },
                                  ),
                                ),
                                Transform.translate(
                                  offset: const Offset(128, -13),
                                  child: Container(
                                    width: 70,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            223, 223, 223, 1),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height: 100,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                          234, 234, 234, 1),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 16),
                                        padding: const EdgeInsets.all(14),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: const Color.fromRGBO(
                                                234, 234, 234, 1),
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.delivery_dining,
                                          color:
                                              Color.fromRGBO(198, 124, 78, 1),
                                          size: 35,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Delivered your order',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          SizedBox(
                                            width: 250,
                                            child: Text(
                                              'We deliver your goods to you in the shortes possible time.',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    128, 128, 128, 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'images/person-two.png',
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Johan Hawn',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Personal Courier',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                128, 128, 128, 1),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color.fromRGBO(
                                                128, 128, 128, 1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: const Icon(Icons.phone_in_talk),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
