// ignore_for_file: prefer_const_declarations, prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, prefer_final_fields, prefer_collection_literals
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/dashboard/filtterscreen/filtterscreenwidget.dart';
import 'package:nm24/map/mapmodelpage.dart';
import 'package:nm24/map/mapwidgetpage.dart';
import 'package:provider/provider.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => MapSampleState();
}

class MapSampleState extends State<MapPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final model = Provider.of<MapModelPage>(context, listen: false);
      model.location = Location();
      model.setsubscriptionvalue();
      model.setInitialLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MapModelPage>(context, listen: false);
    CameraPosition initialCameraPosition = CameraPosition(
      zoom: 20,
      tilt: 80,
      bearing: 30,
      target: model.currentLocation != null
          ? LatLng(model.currentLocation!.latitude ?? 0.0,
              model.currentLocation!.longitude ?? 0.0)
          : LatLng(0.0, 0.0),
    );

    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            child: Column(
              children: [
                sizedboxheight(30.0),
                appbar(context),
              ],
            ),
            preferredSize: Size.fromHeight(60.0),
          ),
          body: Consumer<MapModelPage>(builder: (context, model, _) {
            return Stack(
              children: <Widget>[
                model.currentLocation == null
                    ? Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(),
                      )
                    : GoogleMap(
                        myLocationButtonEnabled: true,
                        compassEnabled: true,
                        markers: model.marker,
                        mapType: MapType.normal,
                        initialCameraPosition: initialCameraPosition,
                        onMapCreated: (GoogleMapController controller) {
                          if (!model.controllerComleter.isCompleted) {
                            model.controllerComleter.complete(controller);
                            model.showLocationPins();
                          } else {
                            //other calling, later is true,
                            //don't call again completer()
                          }
                        },
                      ),
                Positioned(
                  bottom: deviceheight(context, 0.1),
                  left: deviceWidth(context, 0.16),
                  child: propertybox(),
                ),
                bottomsheet(context),
              ],
            );
          }),
        ),
        bgplaceholder()
      ],
    );
  }
}
