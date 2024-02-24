import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer.dart';
class MyModelViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3D Model Viewer'),
      ),
      body: Center(
        child: ModelVie(
          src: 'assets/scene.bin', // Update with the correct path
          alt: 'A 3D model',
          autoRotate: true,
          cameraControls: true,
        ),
      ),
    );
  }
}