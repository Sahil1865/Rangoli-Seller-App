import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/widgets/appbar_widget.dart';
import 'package:emart_seller/widgets/dashboard_button.dart';
import 'package:emart_seller/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(dashboard),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            /// Dashboard buttons row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashButton(
                    context, title: products, count: "60", icon: icProducts),
                dashButton(
                    context, title: orders, count: "15", icon: icOrders),
              ],
            ),
            10.heightBox,

            /// Dashboard buttons row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashButton(
                    context, title: rating, count: "60", icon: icStar),
                dashButton(context,
                    title: totalSales,
                    count: "15",
                    icon: Icons.analytics_outlined),
              ],
            ),
            10.heightBox,

            /// Divider
            const Divider(),

            /// Popular products section
            10.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: boldText(text: popular, color: fontGrey, size: 16.0),
            ),
            10.heightBox,

            /// List of product cards
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3, // you can change this to dynamic later
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {}, // can navigate to product details later
                    leading: Image.asset(
                      imgProduct,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    title: boldText(
                        text: "Product title", color: fontGrey), // dummy data
                    subtitle:
                    normalText(text: "\$40.0", color: darkGrey), // dummy price
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
