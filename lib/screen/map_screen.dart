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
  Future<void> initState() async {
    // TODO: implement initState
    await loadDotenv();
    super.initState();
  }
  _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      styleString: MapboxStyles.LIGHT,
      accessToken: dotenv.env['ACCESS_TOKEN'],
      onMapCreated: _onMapCreated,
      initialCameraPosition: const CameraPosition(target: LatLng(0.0, 0.0)),
    );
  }
}
