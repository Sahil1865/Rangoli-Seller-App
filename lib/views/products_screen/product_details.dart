import 'package:emart_seller/const/const.dart';

class ProductDetails extends StatelessWidget{
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back, color: darkGrey,)),
        title: boldText(text: "Product Title", color:  fontGrey, size: 16.0),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxSwiper.builder(
              autoPlay: true,
              height: 350,
              itemCount: 3,
              aspectRatio: 16 / 9,
              itemBuilder: (context, index) {
                return Image.asset(
                  imgProduct,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            ),
            10.heightBox,

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldText(text: "Product Title",color: fontGrey,size: 16.0),
                  10.heightBox,
                  Row(
                    children: [
                      boldText(text: "SubCategory", color: fontGrey,size: 16.0),
                      10.widthBox,
                      normalText(text: "SubCategory", color: fontGrey,size: 16.0)
                    ],
                  ),
                  10.heightBox,
                  VxRating(
                    isSelectable: false,
                    value: 3.0,
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    maxRating: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  boldText(text: "\$300", color: red, size: 18.0),
                  30.heightBox,
                  Column(
                    children: [
                      // Color row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: boldText(text: "Color", color: fontGrey),
                          ),
                          Row(
                            children: List.generate(
                              3,
                                  (index) => VxBox()
                                  .size(40, 40)
                                  .roundedFull
                                  .color(Vx.randomPrimaryColor)
                                  .margin(const EdgeInsets.symmetric(horizontal: 6))
                                  .make(),
                            ),
                          ),
                        ],
                      ),
                      //quantity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: boldText(text: "Quantity", color: fontGrey),
                          ),
                          normalText(text: "20 items", color: fontGrey),
                        ],
                      ),
                    ],
                  ).box.padding(const EdgeInsets.all(8.0)).white.make(),
                  const Divider(),
                  20.heightBox,
                  boldText(text: "Description", color: fontGrey, size: 14),

                  10.heightBox,
                  normalText(text: "This is the dummy description", color: fontGrey)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}