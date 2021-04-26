import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:qr_reader/providers/db_provider.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({Key key}) : super(key: key);

  @override
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final ScanModel scan = ModalRoute.of(context).settings.arguments;

    final CameraPosition puntoInicial = CameraPosition(
      target: scan.getLatLng(),
      zoom: 16,
    );

    Set<Marker> markers = new Set<Marker>();
    markers.add(new Marker(markerId: MarkerId('geo-loc'), position: scan.getLatLng()));

    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa'),
      ),
      body: GoogleMap(
        markers: markers,
        mapType: MapType.normal,
        zoomControlsEnabled: false,
        initialCameraPosition: puntoInicial,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
