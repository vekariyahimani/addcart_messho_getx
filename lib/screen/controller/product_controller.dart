import 'package:addcart_messho_getx/screen/modal/product_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<ProductModal> productList = [
    ProductModal(
        image: "assets/image/1_.jpg",
        tag: "Trendy Fashionista Women...",
        price: "\$ 187",
      rate: "4.5*"
    ),
    ProductModal(
        image: "assets/image/2_.jpg",
        tag: "Classic Fashionista Women.",
        price: "\$ 387",
      rate: "5.7*"

    ),
    ProductModal(
        image: "assets/image/3_.jpg",
        tag: "Trendy Fashionista Jense...",
        price: "\$ 807",
    rate: "2.9*"),
    ProductModal(
        image: "assets/image/4_.jpg",
        tag: "Trendy Fashionista Women...",
        price: "\$ 207",
    rate: "4.7*"),
    ProductModal(
        image: "assets/image/5_.jpg",
        tag: "Oil Go0d For Hair.....",
        price: "\$ 187",
    rate: "3.0*"),
    ProductModal(
        image: "assets/image/6_.jpg",
        tag: "Whatch Fashionista Boys...",
        price: "\$ 907",
    rate: "5.6*"),
    ProductModal(
        image: "assets/image/7_.jpg",
        tag: "Naykaa Fashionista Boys...",
        price: "\$ 807",
    rate: "4.6*"),
    ProductModal(
        image: "assets/image/8_.jpg",
        tag: "Hils Fashionista Women...",
        price: "\$ 400",
    rate: "6.7*"),
    ProductModal(
        image: "assets/image/01.jpg",
        tag: "Trendy Fashionista Women...",
        price: "\$ 187",
    rate: "2.6*"),
    ProductModal(
        image: "assets/image/02.jpg",
        tag: "Charvi Superior Kurtis...",
        price: "\$ 500",
    rate: "5.6*"),
    ProductModal(
        image: "assets/image/03.jpg",
        tag: "Laptop Air By New...",
        price: "\$ 1lakh",
    rate: "5.7*"),
    ProductModal(
        image: "assets/image/04.jpg",
        tag: "IFone 14ProMax  ...",
        price: "\$ 1lakh",
    rate: "5.8*"),
    ProductModal(
        image: "assets/image/05.jpg",
        tag: "Ari Badus Fashionista ...",
        price: "\$ 4000",
    rate: "5.0*"),
    ProductModal(
        image: "assets/image/06.jpg",
        tag: "Trendy Fashionista jense...",
        price: "\$ 187",
    rate: "3.7*"),
    ProductModal(
        image: "assets/image/07.jpg",
        tag: "Trendy Fashionista ......",
        price: "\$ 8000",
    rate: "3.6*"),
    ProductModal(
        image: "assets/image/08.jpg",
        tag: "Feminine Graceful Women...",
        price: "\$ 3000",
    rate: "3.0*"),


  ].obs;

  RxList<ProductModal> cartList = <ProductModal>[].obs;



}
