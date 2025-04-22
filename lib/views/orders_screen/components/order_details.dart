import '../../../const/const.dart';
import '../../../widgets/our_button.dart';
import '../order_place_details.dart';

class OrderDetails extends StatelessWidget{
  const OrderDetails({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back, color: darkGrey,)),
        title: boldText(text: "Order details", color: fontGrey,size: 16.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: ourButton(
          color: green, onPress: (){}, title: "Confirm Order"
        ),
      ),
      body: Padding(
          padding: (EdgeInsets.all(8.0)),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                //order delivery status
                Visibility(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText(text: "Order Status", color: purpleColor, size: 16.0),
                      SwitchListTile(
                        activeColor: green,
                        value: true, onChanged: (value){},title: boldText(text: "Placed",color: fontGrey),
                      ),
                      SwitchListTile(
                        activeColor: green,
                        value: true, onChanged: (value){},title: boldText(text: "Confirmed",color: fontGrey),
                      ),
                      SwitchListTile(
                        activeColor: green,
                        value: true, onChanged: (value){},title: boldText(text: "Out for Delivery",color: fontGrey),
                      ),
                      SwitchListTile(
                        activeColor: green,
                        value: true, onChanged: (value){},title: boldText(text: "Delivered",color: fontGrey),
                      )
                    ],
                  ).box.padding(EdgeInsets.all(8.0)).outerShadowMd.white.border(color: lightGrey).roundedSM.make(),
                ),

                //order details section
                Column(
                  children: [
                      orderPlaceDetails(
                        d1: "data[Order_ID]",
                        d2: "data[Shipping_method]",
                        title1: "Order ID",
                        title2: "Shipping Method",
                      ),
                    orderPlaceDetails(
                      d1: DateTime.now(),
                      d2: "data[payment_method]",
                      title1: "Order Date",
                      title2: "Payment Method",
                    ),
                    orderPlaceDetails(
                      d1: "Unpaid",
                      d2: "Order Placed",
                      title1: "Payment Status",
                      title2: "Deliver Status",
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              boldText(text: "Shipping Address", color: purpleColor),
                              "order_by_name".text.make(),
                              "order_by_email".text.make(),
                              "order_by_address".text.make(),
                              "order_by_city".text.make(),
                              "order_by_state".text.make(),
                              "order_by_phone".text.make(),
                              "order_by_postal_code".text.make(),
                            ]
                          ),
                          SizedBox(
                            width: 130,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                boldText(text: "Total Amount", color: purpleColor),
                                boldText(text: "\$300", color: red,size: 16.0),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ).box.outerShadowMd.white.border(color: lightGrey).roundedSM.make(),
                const Divider(),
                10.heightBox,
                boldText(text: "Ordered Product", color: fontGrey, size: 16.0),
                10.heightBox,
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(3, (index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        orderPlaceDetails(
                          title1: "data[orders][title]",
                          title2: "data[orders][tprice]",
                          d1: "data[orders][index]",
                          d2: "Refundable",
                        ),
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          width: 30,
                          height: 20,
                          color: purpleColor,
                        ),
                        ),
                        const Divider(),
                      ],
                    );
                },
                ).toList(),
                ).box.outerShadowMd.white.margin(const EdgeInsets.only(bottom: 4)).make(),
                20.heightBox,
              ],
            ),
          )
      ),
    );
  }
}