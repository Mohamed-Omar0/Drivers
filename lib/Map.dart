import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Drawer.dart';

class Map extends StatefulWidget {
  Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

List<LatLng> points = [];

class _MapState extends State<Map> {
  bool iconVisible = false;
  List<Marker> Mark = [];
  late GoogleMapController _googleMapController;
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int _page = 0;
    final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey =
        GlobalKey();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "commuter",
          style: TextStyle(
            fontFamily: "Harlow Solid Italic",
            fontSize: 18,
            color: Color.fromARGB(255, 102, 102, 102),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      endDrawer: Full_Drawer(),
      body: Stack(
        children: [
          SizedBox(
            height: 615,
            child: GoogleMap(
              onMapCreated: (controller) => _googleMapController = controller,
              initialCameraPosition: CameraPosition(
                target: LatLng(30.072951, 31.474768),
                zoom: 9,
              ),
              markers: {
                if (Mark.isNotEmpty)
                  for (int i = 0; i < Mark.length; i++) Mark[i],
              },
            ),
          ),
          Positioned(
            top: 565,
            left: 163,
            child: Container(
              width: 64,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 84, 173, 75),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 585,
                left: 165,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          iconVisible = !iconVisible;
                        },
                      );
                    },
                    icon: Image.asset(
                      "lib/assets/images/mapIcon2.png",
                      width: 60,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: iconVisible,
            child: Positioned(
              top: 340,
              left: 172,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 173, 75),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      iconVisible = !iconVisible;
                      points.clear();
                      Mark.clear();
                      points.addAll(
                        [
                          LatLng(30.150070, 31.528590),
                          LatLng(30.131176, 31.559664),
                          LatLng(30.131596, 31.572773),
                          LatLng(30.196662, 31.452847),
                          LatLng(30.172320, 31.644632),
                          LatLng(30.146292, 31.698040)
                        ],
                      );
                      Mark.addAll(
                        {
                          for (int i = 1; i <= points.length; i++)
                            Marker(
                              markerId: MarkerId("$i"),
                              infoWindow: InfoWindow(
                                title: "palce $i",
                              ),
                              icon: BitmapDescriptor.defaultMarkerWithHue(
                                  BitmapDescriptor.hueGreen),
                              position: points.isNotEmpty
                                  ? points[i - 1]
                                  : LatLng(0, 0),
                            ),
                        },
                      );
                    });
                  },
                  icon: Image.asset(
                    "lib/assets/images/Picture18.png",
                    color: Colors.white,
                    width: 30,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: iconVisible,
            child: Positioned(
              top: 400,
              left: 172,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 173, 75),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      iconVisible = !iconVisible;
                      points.clear();
                      Mark.clear();
                      points.addAll(
                        [
                          LatLng(30.058922, 31.550924),
                          LatLng(30.052618, 31.574715),
                          LatLng(30.079931, 31.518879),
                          LatLng(30.056401, 31.506741),
                          LatLng(30.039589, 31.534901),
                          LatLng(30.020673, 31.534416),
                        ],
                      );
                      Mark.addAll(
                        {
                          for (int i = 1; i <= points.length; i++)
                            Marker(
                              markerId: MarkerId("$i"),
                              infoWindow: InfoWindow(
                                title: "palce $i",
                              ),
                              icon: BitmapDescriptor.defaultMarkerWithHue(
                                  BitmapDescriptor.hueGreen),
                              position: points.isNotEmpty
                                  ? points[i - 1]
                                  : LatLng(0, 0),
                            ),
                        },
                      );
                    });
                  },
                  icon: Image.asset(
                    "lib/assets/images/Picture17.png",
                    color: Colors.white,
                    width: 30,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: iconVisible,
            child: Positioned(
              top: 460,
              left: 172,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 173, 75),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      iconVisible = !iconVisible;
                      points.clear();
                      Mark.clear();
                      points.addAll(
                        [
                          LatLng(30.096736, 31.432940),
                          LatLng(30.066486, 31.455274),
                          LatLng(30.033705, 31.445078),
                          LatLng(29.999651, 31.452847),
                          LatLng(29.981989, 31.479551),
                          LatLng(30.024457, 31.395068),
                        ],
                      );
                      Mark.addAll(
                        {
                          for (int i = 1; i <= points.length; i++)
                            Marker(
                              markerId: MarkerId("$i"),
                              infoWindow: InfoWindow(
                                title: "palce $i",
                              ),
                              icon: BitmapDescriptor.defaultMarkerWithHue(
                                  BitmapDescriptor.hueGreen),
                              position: points.isNotEmpty
                                  ? points[i - 1]
                                  : LatLng(0, 0),
                            ),
                        },
                      );
                    });
                  },
                  icon: Image.asset(
                    "lib/assets/images/Picture16.png",
                    color: Colors.white,
                    width: 30,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: iconVisible,
            child: Positioned(
              top: 520,
              left: 172,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 173, 75),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      iconVisible = !iconVisible;
                      points.clear();
                      Mark.clear();
                      points.addAll(
                        [
                          LatLng(30.071318, 31.355376),
                          LatLng(30.050937, 31.369457),
                          LatLng(30.041481, 31.358289),
                          LatLng(30.035386, 31.338625),
                          LatLng(30.048205, 31.294442),
                          LatLng(30.054299, 31.194422),
                        ],
                      );
                      Mark.addAll(
                        {
                          for (int i = 1; i <= points.length; i++)
                            Marker(
                              markerId: MarkerId("$i"),
                              infoWindow: InfoWindow(
                                title: "palce $i",
                              ),
                              icon: BitmapDescriptor.defaultMarkerWithHue(
                                  BitmapDescriptor.hueGreen),
                              position: points.isNotEmpty
                                  ? points[i - 1]
                                  : LatLng(0, 0),
                            ),
                        },
                      );
                    });
                  },
                  icon: Image.asset(
                    "lib/assets/images/roadIcon.png",
                    color: Colors.white,
                    width: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
