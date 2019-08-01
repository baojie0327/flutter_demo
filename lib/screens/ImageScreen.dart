import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Image的使用'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/logo.JPG'),
              width: 100.0,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            //  repeat: ImageRepeat.repeatY,
            ),
            Image.asset('images/logo.JPG', width: 100.0),
            Image(
              image: NetworkImage(
                  'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561876698.webp'),
              width: 80,
            ),
            Image.network(
              'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561876698.webp',
              width: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.accessible,color: Colors.green,),
                Icon(Icons.error,color: Colors.green,),
                Icon(Icons.fingerprint,color: Colors.green,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
