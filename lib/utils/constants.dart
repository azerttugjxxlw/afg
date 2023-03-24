import 'package:flutter/material.dart';


// list of colors that we use in our app
const kBackgroundColor = Color(0xFFF1EAE3);
const kPrimaryColor = Color(0xFF035AA6);
const kSecondaryColor = Color(0xFF0B0641);
const kTiroirColor = Color(0xFF0B0641);
const kTextLightColor = Color(0xFF747474);
const kBlueColor = Color(0xFF40BAD5);
const kSecondaryColorB = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryColorC = Color(0xFF84AB5C);
const kTextColorA = Color(0xFF202E2E);
const kTextLigntColor = Color(0xFFFCF9F7);
const kTranspColor = Colors.transparent;
const kTextpagecardColor = Color(0xFF1EAE3FF);
//Widget currentPage = Reservation();
//Widget ?appbarPage =Chambreappbar();
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;
const kDefaultMarding = 20.0;
final rowTextStyle = TextStyle(color: Colors.white);

// our default Shadow
const kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12, // Black color with 12% opacity
);

var defaultBackgroundColor =  kBackgroundColor;
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8.0, top: 0);

class ButtonCard extends StatelessWidget {
  ButtonCard({required this.color, required this.cardChild, required this.onPress});

  final Color color;
  final Widget cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 2,
        child: cardChild,
        margin:EdgeInsets.fromLTRB(0, 10, 0, 10),

        decoration: BoxDecoration(
          color: color,

        ),
      ),
    );
  }
}
class ButtonhoriCard extends StatelessWidget {
  ButtonhoriCard({required  this.cardChild, required this.onPress, required this.color});
  final Color color;
  final Widget cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: EdgeInsets.only(left: 20,top: 0,right: 20,bottom: 0),
            child: GestureDetector(

      onTap: onPress,
      child: Container(

        color: color,
        height: MediaQuery.of(context).size.height / 2,
        width:150,
        child: cardChild,


      ),
    ),
    );
  }
}
class Choice {
  const Choice({required this.title, required this.icon});

  final String title;
  final IconData icon;
}
const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
];
class ChoiceCard extends StatelessWidget {
  const ChoiceCard({required Key key, required this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0,),
            Text(choice.title,),
          ],
        ),
      ),
    );
  }
}