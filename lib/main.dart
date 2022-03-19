import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isBulbOn = false;

  /*_buildBulbImage() {
    if (isBulbOn)
      return Image.network("https://www.marketing91.com/wp-content/uploads/2017/05/Core-product-explained-with-examples.jpg");
    else
      return Image.network("https://th.bing.com/th/id/OIP.T-GBXcVOJS5kc6HGNWYUbAAAAA?pid=ImgDet&rs=1");
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //_buildBulbImage(),
                  isBulbOn ? Image.network("https://www.marketing91.com/wp-content/uploads/2017/05/Core-product-explained-with-examples.jpg") : Image.network("https://th.bing.com/th/id/OIP.T-GBXcVOJS5kc6HGNWYUbAAAAA?pid=ImgDet&rs=1"),
                  ElevatedButton(
                    child: isBulbOn ? Text("Switch OFF") : Text("Switch ON"),
                    onPressed: () {
                      setState(() {
                        isBulbOn = !isBulbOn;
                      });
                    },
                  )
                ],
              ),
            )));
  }
}
