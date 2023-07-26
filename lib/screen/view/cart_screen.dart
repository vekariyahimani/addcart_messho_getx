import 'package:addcart_messho_getx/screen/controller/product_controller.dart';
import 'package:addcart_messho_getx/screen/modal/product_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_core/src/get_main.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.toNamed('product',arguments: index);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                          )),
                      SizedBox(
                        width: 190,
                      ),
                      Icon(
                        Icons.search,
                        size: 25,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Icon(
                        Icons.favorite_border,
                        size: 25,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 25,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.black12),
                    child: Image.asset(
                      "${productController!.productList[index].image}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${productController!.productList![index].tag}",
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Column(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Wishlist")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Share")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${productController!.productList[index].price}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: 210,
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                        child: Text(
                      "\$162 with 2 Special Offers",
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 11,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                        child: Text(
                      "Free Delivery",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 26,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green.shade800,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text(
                          "${productController!.productList[index].rate}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.people,
                        color: Colors.black26,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "39,685",
                        style: TextStyle(color: Colors.black26, fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Select Size",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Center(
                            child: Text(
                          "XS",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Center(
                            child: Text(
                          "S",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Center(
                            child: Text(
                          "M",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Center(
                            child: Text(
                          "L",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Center(
                            child: Text(
                          "XL",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            ProductModal p1=productController.productList[index];
                            productController.cartList.add(p1);
                            Get.back();
                          },
                          child: Container(
                            height: 45,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 22,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10,),
                                Text("Add to Cart",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),)


                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10,),
                              Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
