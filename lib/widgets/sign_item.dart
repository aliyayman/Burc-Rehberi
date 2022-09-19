import 'package:flutter/material.dart';
import '../model/Sign.dart';

class SignItem extends StatelessWidget {
  final Sign listelenenBurc;
  const SignItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/signDetailPage',
                  arguments: listelenenBurc);
            },
            leading: Image.asset(
              "assets/images/" + listelenenBurc.signSmallPic,
            ),
            title: Text(
              listelenenBurc.signName,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenBurc.signDate,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
