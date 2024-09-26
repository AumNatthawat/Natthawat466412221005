import 'package:flutter/material.dart';

class MapmeasurePage extends StatefulWidget {
  const MapmeasurePage({super.key});

  @override
  State<MapmeasurePage> createState() => _MapmeasurePageState();
}

class _MapmeasurePageState extends State<MapmeasurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แผนที่โบราณสถาน'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(

      ),
    );
  }
}
