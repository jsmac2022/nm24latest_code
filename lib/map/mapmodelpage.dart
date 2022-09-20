// ignore_for_file: prefer_final_fields, prefer_const_constructors, prefer_collection_literals

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapModelPage extends ChangeNotifier {
  Completer<GoogleMapController> _controller = Completer();
  Completer<GoogleMapController> get controllerComleter=>_controller;

  Set<Marker> _marker = Set<Marker>();
  get marker => _marker;
  late StreamSubscription<LocationData> subscription;
  LocationData? _currentLocation;
  LocationData? get currentLocation => _currentLocation;
  late LocationData destinationLocation;
  late Location location;

  setsubscriptionvalue() {
    subscription = location.onLocationChanged.listen((clocation) {
      _currentLocation = clocation;
      notifyListeners();
      updatePinsOnMap();
    });
    notifyListeners();
  }

  void setInitialLocation() async {
    await location.getLocation().then((value) {
      _currentLocation = value;
      notifyListeners();
    });
  }

  void showLocationPins() {
    var sourceposition = LatLng(currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0);

    _marker.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourceposition,
    ));
  }

  void updatePinsOnMap() async {
    CameraPosition cameraPosition = CameraPosition(
      zoom: 16,
      tilt: 80,
      bearing: 30,
      target: LatLng(currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0),
    );

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition = LatLng(currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0);

    _marker.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

    _marker.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourcePosition,
    ));
  }
}
