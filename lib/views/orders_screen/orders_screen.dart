import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/orders_screen/components/order_details.dart';
import 'package:emart_seller/widgets/appbar_widget.dart';
import 'package:intl/intl.dart' as intl;

class OrdersScreen extends StatelessWidget{
  const OrdersScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(orders),
      body: Padding(padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
            20, // total products
                (index) => ListTile(
              onTap: () {
                Get.to(()=> const OrderDetails());
              }, // you can add navigation here
              tileColor: textfieldGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              title: boldText(
                text: "49864165489489", // replace with actual product data
                color: purpleColor,
              ),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_month, color: fontGrey,),
                      10.widthBox,
                      boldText(text: intl.DateFormat().add_yMd().format(DateTime.now()), color: fontGrey),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.payment, color: fontGrey,),
                      10.widthBox,
                      boldText(text: unpaid, color: red)
                    ],
                  )
                  //normalText(text: "\$40.0", color: darkGrey,)
              ],
              ),
                  trailing:  boldText(text: "\$40", color: purpleColor, size: 16.0),
              ).box.margin(const EdgeInsets.only(bottom: 4)).make(),
            ),
          ),
          ),
        ),
      );
  }
}