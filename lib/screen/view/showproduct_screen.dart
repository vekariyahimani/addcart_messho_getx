import 'package:addcart_messho_getx/screen/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowProductScreen extends StatefulWidget {
  const ShowProductScreen({Key? key}) : super(key: key);

  @override
  State<ShowProductScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowProductScreen> {
  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 5, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Colors.black,
                        )),
                    Text(
                      "CART",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    )
                  ],
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.black12,
                ),
                SizedBox(
                  height: 10,
                ),
                Obx(
                  () => Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 80,
                                    width: 83,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "${productController!.cartList[index].image}",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${productController!.cartList[index].tag}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${productController!.cartList[index].price}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: 160,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 16,
                                          color: Colors.black45,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "All issue easy returns",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "Size:IND-9  Qty:2",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: 8),
                                    InkWell(
                                      onTap: () {
                                        productController.cartList
                                            .removeAt(index);
                                      },
                                      child: Text(
                                        "Remove",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 1,
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Colors.black12),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        );
                      },
                      itemCount: productController!.cartList.length,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
