import 'package:flutter/material.dart';
import 'package:safe_com/api/environ.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_gl/mapbox_gl.dart';


class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapboxMapController? mapController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      styleString: MapboxStyles.MAPBOX_STREETS,
      myLocationEnabled: true,
      accessToken: 'pk.eyJ1Ijoia2Ftc2lvY2VhbjEyMyIsImEiOiJjbG53NW91ankwNGJzMmxsZTYzcWw4bHp2In0.HJ8OsTO4hTaKc8csOUxr5g',
      onMapCreated: _onMapCreated,
      initialCameraPosition: const CameraPosition(target: LatLng(0.0, 0.0)),
    );
  }
}
