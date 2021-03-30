import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 20.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(          
            children: [
              _headerImage(),
              _titleBody(),
              _actions(),
              _textBody(),
              _textBody(),
            ],
          ),        
      ),
    );
  }

  Widget _headerImage() {
    return Image(
      image: NetworkImage(
          'https://soloskatemag.com/upload/Storage/soloskatemag-lobby-covid-skate.jpg'),
    );
  }

  Widget _titleBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skateshop Street',
                  style: estiloTitulo,
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  'Av. Bolognesi 123, Tacna',
                  style: estiloSubTitulo,
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            size: 30.0,
            color: Colors.red,
          ),
          Text(
            '4.5',
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    );
  }

  Widget _actions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _action(Icons.call, 'CALL'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _action(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _textBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Some gal in a twinkling of an eye Dem a ready fi come pull down me Karl Kani Oh, come on now Tell me how can I Love a one dat really dont deserve me Na try fi keep and na try preserve me Mes a boy could get whole heep a girl ya heard me Many are called but only few dem worthy Body have to physically strong and sturdy Spiritually balanced fi clean and purge me Mentally advanced fi always urge meRead a couple books and challenge the clergy' +
            'Read a couple psalms up in the morning early Could you be so kind Then show me a sign Ive been searchin and its so hard to find Decent values with a decent wine Decent jubee running it down the line' +
            'Maybe its my mind Maybe Im blind Maybe its the way that Ive been spending my time Im still searching for a fine peac',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
