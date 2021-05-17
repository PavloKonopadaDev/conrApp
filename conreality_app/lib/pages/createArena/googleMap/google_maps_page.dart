import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'mapStyle.dart';

class GoogleMapScreen extends StatefulWidget {
  final LocationData location;
  const GoogleMapScreen({this.location});

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  LocationData _locationData;
  // Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;
  // Maps
  Set<Marker> _markers = HashSet<Marker>();
  Set<Polygon> _polygons = HashSet<Polygon>();
  Set<Circle> _circles = HashSet<Circle>();
  GoogleMapController _googleMapController;
  BitmapDescriptor _markerIcon;
  List<LatLng> polygonLatLngs = List<LatLng>();
  double radius;

  //ids
  int _polygonIdCounter = 1;
  int _circleIdCounter = 1;
  int _markerIdCounter = 1;

  // Type controllers
  bool _isPolygon = true; //Default
  bool _isMarker = false;
  bool _isCircle = false;

  @override
  void initState() {
    super.initState();
    _locationData = widget.location;
  }

  // void _setMarkerIcon() async {
  //   _markerIcon = await BitmapDescriptor.fromAssetImage(
  //       ImageConfiguration(), 'assets/images/Ellipse81.png');
  // }

  void _setPolygon() {
    final String polygonIdVal = 'polygon_id_$_polygonIdCounter';
    _polygons.add(Polygon(
      polygonId: PolygonId(polygonIdVal),
      points: polygonLatLngs,
      strokeWidth: 2,
      strokeColor: Colors.yellow,
      fillColor: Colors.yellow.withOpacity(0.15),
    ));
  }

  void _setCircles(LatLng point) {
    final String circleIdVal = 'circle_id_$_circleIdCounter';
    _circleIdCounter++;
    print(
        'Circle | Latitude: ${point.latitude}  Longitude: ${point.longitude}  Radius: $radius');
    _circles.add(Circle(
        circleId: CircleId(circleIdVal),
        center: point,
        radius: radius,
        fillColor: Colors.redAccent.withOpacity(0.5),
        strokeWidth: 3,
        strokeColor: Colors.redAccent));
  }

  void _setMarkers(LatLng point) {
    final String markerIdVal = 'marker_id_$_markerIdCounter';
    _markerIdCounter++;
    setState(() {
      print(
          'Marker | Latitude: ${point.latitude}  Longitude: ${point.longitude}');
      _markers.add(
        Marker(
          markerId: MarkerId(markerIdVal),
          position: point,
        ),
      );
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(Utils.mapStyle);
    setState(
      () {
        _markers.add(
          Marker(
            markerId: MarkerId("0"),
            position: LatLng(49.842957, 24.031111),
            // icon: mapMarker,
            infoWindow: InfoWindow(
              title: "Lviv",
              snippet: "Your default city!",
            ),
          ),
        );
      },
    );
  }

  Widget _fabPolygon() {
    return FloatingActionButton.extended(
      onPressed: () {
        //Remove the last point setted at the polygon
        setState(() {
          polygonLatLngs.removeLast();
        });
      },
      icon: Icon(Icons.undo),
      label: Text('Undo point'),
      backgroundColor: Colors.orange,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose your location"),
        backgroundColor: Colors.grey[700],
      ),
      floatingActionButton:
          polygonLatLngs.length > 0 && _isPolygon ? _fabPolygon() : null,
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(49.842957, 24.031111),
              zoom: 15,
            ),
            onMapCreated: _onMapCreated,
            markers: _markers,
            circles: _circles,
            polygons: _polygons,
            myLocationEnabled: true,
            onTap: (point) {
              if (_isPolygon) {
                setState(() {
                  polygonLatLngs.add(point);
                  _setPolygon();
                });
              } else if (_isMarker) {
                setState(() {
                  _markers.clear();
                  _setMarkers(point);
                });
              } else if (_isCircle) {
                setState(
                  () {
                    _circles.clear();
                    _setCircles(point);
                  },
                );
              }
            },
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(20),
                  top: ScreenUtil().setHeight(40),
                ),
                child: Container(
                  width: ScreenUtil().setWidth(312),
                  height: ScreenUtil().setHeight(52),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Move the map \n to select the exact location.',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      Container(
                        width: ScreenUtil().setWidth(49.26),
                        height: ScreenUtil().setHeight(49.26),
                        child: Image.asset('assets/images/move.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                RaisedButton(
                  color: Colors.black54,
                  onPressed: () {
                    _isPolygon = true;
                    _isMarker = false;
                    _isCircle = false;
                  },
                  child: Text(
                    'Polygon',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                RaisedButton(
                  color: Colors.black54,
                  onPressed: () {
                    _isPolygon = false;
                    _isMarker = false;
                    _isCircle = true;
                    radius = 50;
                    return showDialog(
                        builder: (context) => AlertDialog(
                              backgroundColor: Colors.grey[900],
                              title: Text(
                                'Choose the radius (m)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              content: Padding(
                                padding: EdgeInsets.all(8),
                                child: Material(
                                  color: Colors.black,
                                  child: TextField(
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.zoom_out_map),
                                      hintText: 'Ex: 100',
                                      suffixText: 'meters',
                                    ),
                                    keyboardType:
                                        TextInputType.numberWithOptions(),
                                    onChanged: (input) {
                                      setState(() {
                                        radius = double.parse(input);
                                      });
                                    },
                                  ),
                                ),
                              ),
                              actions: [
                                FlatButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    'Ok',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        context: context);
                  },
                  child: Text(
                    'Circle',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
