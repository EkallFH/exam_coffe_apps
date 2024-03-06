import 'package:flutter/material.dart';
import 'package:examcoffeshop/detailpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> location = [
    'Bilzen, Tanjungbalai',
    'Giri, Banyuwangi',
    'Kalibaru, Banyuwangi'
  ];
  String selectLocation = '';

  final List<String> coffe = [
    'Cappucino',
    'Machiato',
    'Latte',
    'Americano',
  ];

  List imgList = [
    'cappucino-1',
    'cappucino-2',
    'cappucino-3',
    'cappucino-4',
  ];

  List nameList = [
    'with Chocolate',
    'with Oat Milk',
    'with Chocolate',
    'with Oat Milk',
  ];

  List<String> priceList = [
    '\$ 4.53',
    '\$ 3.90',
    '\$ 4.53',
    '\$ 3.90',
  ];

  List star = [
    'star-1',
    'star-2',
    'star-3',
    'star-4',
  ];

  int current = 0;

  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 60, 30, 1),
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(19, 19, 19, 1),
                      Color.fromRGBO(49, 49, 49, 1),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Location',
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            DropdownButton<String>(
                              dropdownColor: Colors.black,
                              value: selectLocation.isEmpty
                                  ? null
                                  : selectLocation,
                              hint: const Text(
                                'Location',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              items: location.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(
                                      fontFamily: 'Sora',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                selectLocation = value!;
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 110,
                            ),
                            Transform.translate(
                              offset: const Offset(15.0, -15.0),
                              child: Image.asset('images/person-one.png'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: const TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            hintText: 'Search Coffe',
                            hintStyle: const TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            suffixIcon: Container(
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(198, 124, 78, 1),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.tune,
                                color: Colors.white,
                              ),
                            ),
                            fillColor: const Color.fromRGBO(49, 49, 49, 1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -70),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset('images/promo.png'),
                        )
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(15, -55),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: const ColoredBox(
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(6, 4, 6, 4),
                          child: Text(
                            'Promo',
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(15, -7),
                    child: Container(
                      width: 165,
                      height: 27,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Transform.translate(
                    offset: const Offset(15, 30),
                    child: Container(
                      width: 125,
                      height: 23,
                      color: Colors.black,
                    ),
                  ),
                  Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(15, -15),
                        child: const Text(
                          'Buy one get\none FREE',
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.translate(
                offset: const Offset(0, -80),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ListView.builder(
                          itemCount: coffe.length,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.all(8),
                                padding:
                                    const EdgeInsets.fromLTRB(16, 10, 16, 10),
                                decoration: BoxDecoration(
                                  color: current == index
                                      ? const Color.fromRGBO(198, 124, 78, 1)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    coffe[index],
                                    style: TextStyle(
                                      fontFamily: 'Sora',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: current == index
                                          ? Colors.white
                                          : const Color.fromRGBO(47, 75, 78, 1),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -140),
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GridView.builder(
                                itemCount: imgList.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio:
                                      (MediaQuery.of(context).size.height -
                                              50 -
                                              25) /
                                          (4 * 280),
                                  mainAxisExtent: 280,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 8, left: 5),
                                            child: Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  child: Image.asset(
                                                      'images/${imgList[index]}.png'),
                                                ),
                                                Image.asset(
                                                    'images/${star[index]}.png'),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            'Cappucino',
                                            style: TextStyle(
                                              fontFamily: 'Sora',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            nameList[index],
                                            style: const TextStyle(
                                              fontFamily: 'Sora',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                priceList[index],
                                                style: const TextStyle(
                                                  fontFamily: 'Sora',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      47, 74, 78, 1),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 60,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                             const DetailPage()),
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromRGBO(
                                                        198, 124, 78, 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: const Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 16,
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          iconSize: 30,
          selectedItemColor: const Color.fromRGBO(198, 124, 78, 1),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
