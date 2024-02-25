import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';



class conn extends StatefulWidget {
  @override
  _connState createState() => _connState();
}

class _connState extends State<conn> {
  ConnectivityResult _connectivityResult = ConnectivityResult.none;

  @override
  void initState() {
    super.initState();
    // Subscribe to connectivity changes
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _connectivityResult = result;
      });
    });

    // Check connectivity initially
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    setState(() {
      _connectivityResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Connectivity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Connectivity Status: $_connectivityResult',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkConnectivity,
              child: Text('Check Connectivity'),
            ),
          ],
        ),
      ),
    );
  }
}
