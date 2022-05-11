import 'package:flutter/material.dart';

class Chaufa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Arroz Chaufa Foto",
            style: TextStyle(fontFamily: 'Marker', fontSize: 25),
          ),
          Image.network(
              'https://elcomercio.pe/resizer/fJ0_-_EZ130jOxfnSdi-lixHl7A=/980x528/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/IURQSHV7LFH6ZCTS2KH7JZ2ZEE.jpg'),
        ],
      ),
    );
  }
}
