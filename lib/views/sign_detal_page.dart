import 'package:burc_app/model/Sign.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class SignDetail extends StatefulWidget {
  final Sign choseSign;
  const SignDetail({required this.choseSign, Key? key}) : super(key: key);

  @override
  _SignDetailState createState() => _SignDetailState();
}

class _SignDetailState extends State<SignDetail> {
  Color colorAppbar = Colors.transparent;
  late PaletteGenerator _generator;
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => findColorAppbar());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: colorAppbar,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.choseSign.signName + " Burcu ve Özellikleri"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/" + widget.choseSign.signBigPic,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.choseSign.signDetail,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void findColorAppbar() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("assets/images/${widget.choseSign.signBigPic}"));
    colorAppbar = _generator.dominantColor!.color;
    setState(() {});
  }
}
