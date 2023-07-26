import 'package:addcart_messho_getx/screen/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  TextEditingController txtserch = TextEditingController();
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      Padding(
          padding: EdgeInsets.only(top: 13, left: 5, right: 5),
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/image/02.png",
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "HIMANI VEKARIYA",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: 1),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.notifications_none),
                IconButton(onPressed: () {
                  Get.toNamed('show');
                  
                }, icon: Icon(Icons.shopping_cart_outlined))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
              width: double.infinity,
              child: TextField(
                controller: txtserch,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                    label: Text("Search by Keyword or Product....."),
                    labelStyle: TextStyle(color: Colors.black38, fontSize: 13),
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12
              ),
            )

          ]
          )),
      Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Obx(() => Expanded(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: productController!.productList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Get.toNamed('cart',arguments: index);
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 500,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12, width: 1)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 120,
                                width: 160,
                                child: Image.asset(
                                  "${productController!.productList![index].image}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "  ${productController!.productList![index].tag}",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 9),
                                  ),

                                  Icon(
                                    Icons.share_outlined,
                                    color: Colors.black38,
                                    size: 18,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "  ${productController!.productList![index].price}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 43,),
                                  Container(
                                    height: 23,
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
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    ])));
  }
}
