import 'dart:async';

import 'package:addcart_messho_getx/screen/view/product_screen.dart';
import 'package:flutter/material.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  State<SplshScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    super.initState();


    Timer(Duration(seconds: 4),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductScreen(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: Center(
        child: Image.asset("assets/image/01.png",height: 180,width: 180,),

      ),
    ));
  }
}
