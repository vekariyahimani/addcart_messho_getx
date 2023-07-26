import 'package:addcart_messho_getx/screen/view/cart_screen.dart';
import 'package:addcart_messho_getx/screen/view/product_screen.dart';
import 'package:addcart_messho_getx/screen/view/showproduct_screen.dart';
import 'package:addcart_messho_getx/screen/view/splsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => SplshScreen(),
        'product':(p0) => ProductScreen(),
        'cart':(p0) => CartScreen(),
        'show':(p0) => ShowProductScreen(),
      },
    )
  );
}