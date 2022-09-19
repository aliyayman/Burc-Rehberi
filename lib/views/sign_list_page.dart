import 'package:burc_app/widgets/sign_item.dart';
import 'package:burc_app/data/strings.dart';
import 'package:burc_app/model/Sign.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late final List<Sign> allSign;

  BurcListesi() {
    allSign = createDatabase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.APP_NAME),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return SignItem(listelenenBurc: allSign[index]);
          },
          itemCount: allSign.length,
        ),
      ),
    );
  }

  List<Sign> createDatabase() {
    List<Sign> signList = [];

    for (int i = 0; i < 12; i++) {
      var signName = Strings.SIGN_NAMES[i];
      var signDate = Strings.SIGN_DATES[i];
      var signDetail = Strings.SIGN_DETAIL[i];
      var signSmallPic =
          Strings.SIGN_NAMES[i].toLowerCase() + '${i + 1}.png';
      var signBigPic =
          Strings.SIGN_NAMES[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Sign addSign =
          Sign(signName, signDate, signDetail, signSmallPic, signBigPic);
      signList.add(addSign);
    }
    return signList;
  }
}
