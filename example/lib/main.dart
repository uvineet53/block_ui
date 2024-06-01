import 'package:block_ui/block_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'block ui demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("block ui demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text("try 'em out!"),
            ),
            FilledButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: () async {
                BlockUi.show(context);
                await Future.delayed(Duration(milliseconds: 1000));
                BlockUi.hide(context);
              },
              child: Text("open default loader"),
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: () async {
                BlockUi.show(context,
                    backgroundColor: Colors.green,
                    child: SpinKitChasingDots(color: Color(0xff388e3c)));
                await Future.delayed(Duration(milliseconds: 1000));
                BlockUi.hide(context);
              },
              child: Text("custom loader"),
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: () async {
                BlockUi.show(context,
                    backgroundColor: Colors.blue,
                    child: Text(
                      "Please Wait...",
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ));
                await Future.delayed(Duration(milliseconds: 1000));
                BlockUi.hide(context);
              },
              child: Text("custom loader with text"),
            ),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: () async {
                BlockUi.show(context,
                    backgroundWidget: Image.network(
                      "https://images.unsplash.com/photo-1492321936769-b49830bc1d1e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    child: SpinKitPouringHourglass(color: Colors.white));

                await Future.delayed(Duration(milliseconds: 2000));
                BlockUi.hide(context);
              },
              child: Text("custom loader with image"),
            ),
          ],
        ),
      ),
    );
  }
}
