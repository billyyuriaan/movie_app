import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';
import 'package:geolocator/geolocator.dart';

class CinemaHome extends StatefulWidget {
  const CinemaHome({super.key});

  @override
  State<CinemaHome> createState() => _CinemaHomeState();
}

class _CinemaHomeState extends State<CinemaHome> {
  int _selectedIdx = 0;

  static const List<Widget> _widgetOpt = <Widget>[
    HomeCinemaScreen(),
    HomeCinemaProfileScreen()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIdx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const GradientText(
          "Mooviey",
          gradient: appBarText,
        ),
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: _widgetOpt[_selectedIdx],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: _onItemTap,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: natural700Color,
      ),
    );
  }
}

class HomeCinemaProfileScreen extends StatefulWidget {
  const HomeCinemaProfileScreen({super.key});

  @override
  State<HomeCinemaProfileScreen> createState() =>
      _HomeCinemaProfileScreenState();
}

class _HomeCinemaProfileScreenState extends State<HomeCinemaProfileScreen> {
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
  late Position position;

  Future<Position?> _getCurrentPosisition() async {
    final hasPermission = await _handlePermisson();
    Position? positition;

    if (!hasPermission) {
      return positition;
    }

    positition = await _geolocatorPlatform.getCurrentPosition();
    return positition;
  }

  Future<bool> _handlePermisson() async {
    bool serviceEnable;
    LocationPermission permission;

    serviceEnable = await _geolocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnable) {
      return false;
    }

    permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      return false;
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

  @override
  void initState() {
    position = _getCurrentPosisition() as Position;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 40,
          child: Image.asset(
            "assets/image/default_user.png",
          ),
        )),
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Text(
            "User",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton.icon(
            onPressed: () {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("About"),
                      content: const Text(
                          "Moviez Merupakan Aplikasi Pemesanan Tiket Bioskop"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.popAndPushNamed(context, "/login");
                            },
                            child: const Text("OK"))
                      ],
                    );
                  });
            },
            icon: const Icon(Icons.info),
            label: const Text("About"))
      ],
    ));
  }
}

class HomeCinemaScreen extends StatefulWidget {
  const HomeCinemaScreen({super.key});

  @override
  State<HomeCinemaScreen> createState() => _HomeCinemaScreenState();
}

class _HomeCinemaScreenState extends State<HomeCinemaScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(5), color: Colors.black),
          //     child: Center(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           InkWell(
          //             onTap: () {},
          //             child: Row(children: const [
          //               Icon(
          //                 Icons.swap_calls,
          //                 color: Colors.white,
          //               ),
          //               Text(
          //                 "data",
          //                 style: TextStyle(color: Colors.white),
          //               )
          //             ]),
          //           ),
          //           InkWell(
          //             child: const Icon(Icons.notifications_none,
          //                 color: Colors.white),
          //             onTap: () {},
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [Icon(Icons.map_outlined), Text("Jakarta")],
                  ),
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.search))
                ],
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/image/imgCorrusel.jpeg")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "See All >",
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OutlinedButton(
                  onPressed: () => {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.blue, width: 2.0)),
                  child: const Text(
                    "All Cinema",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () => {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black, width: 2.0)),
                  child: const Text(
                    "XXI",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () => {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black, width: 2.0)),
                  child: const Text(
                    "CGV",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/image/card_batman.jpeg"),
                InkWell(
                  child: Image.asset("assets/image/card_avatar.jpeg"),
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/cinemaSession");
                  },
                ),
                Image.asset("assets/image/card_every.jpeg")
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
