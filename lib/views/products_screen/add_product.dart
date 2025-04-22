import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/products_screen/components/product_drop_down.dart';
import 'package:emart_seller/views/products_screen/components/product_images.dart';
import 'package:emart_seller/views/products_screen/components/color_controller.dart';
import 'package:emart_seller/widgets/color_selector.dart';
import 'package:emart_seller/widgets/custom_textfield.dart';

class AddProduct extends StatelessWidget{
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back, color: white)),
        title: boldText(text: "Add Product",color: fontGrey, size: 16),
        actions: [
          TextButton(onPressed: (){}, child: boldText(text: save,color: purpleColor))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            customTextField(
              hint: "eg. notebook", label: "Product name"),
            customTextField(
              hint: "eg. Product Description...", label: "Description", isDesc: true),
            10.heightBox,
            customTextField(hint: "eg. \$100",label: "Our Price"),
            10.heightBox,
            customTextField(hint: "eg. \$100",label: "MRP"),
            10.heightBox,
            customTextField(hint: "eg. 20",label: "Quantity"),
            10.heightBox,
            productDropdown(),
            10.heightBox,
            productDropdown(),
            10.heightBox,
            boldText(text: "Choose product images"),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index)=> productImages(label: "${index + 1}")),
            ),
            5.heightBox,
            normalText(text: "1st image is display image", color: lightGrey),
            10.heightBox,
            ProductColorSelector()
          ],
        ),
      ),
    );
  }
}