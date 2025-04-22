import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/home_screen/home.dart';
import 'package:emart_seller/widgets/our_button.dart';
import 'package:emart_seller/widgets/text_style.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.heightBox,
            normalText(text: welcome,size: 18.0),
            20.heightBox,
            Row(
              children: [
                const Icon(Icons.shopping_cart_checkout, size: 100, color: Colors.white,).box.border(color: Colors.white).rounded.padding(const EdgeInsets.all(8)).make(),
                10.widthBox,
                boldText(text: appname, size: 20),
              ],
            ),
            40.heightBox,

            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email, color: purpleColor),
                    border: InputBorder.none,
                    hintText: emailHint
                  ),
                ),
                const Divider(
                  color: darkGrey,
                  thickness: 1,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.key, color: purpleColor),
                      border: InputBorder.none,
                      hintText: passwordHint
                  ),
                ),
                const Divider(
                  color: darkGrey,
                  thickness: 1,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: normalText(text: forgotPassword, color: purpleColor))),
                20.heightBox,
                SizedBox(
                  width: context.screenWidth-100,
                  child: ourButton(
                    title: login,
                    onPress: (){
                      Get.to(() => const Home());
                    },
                  ),
                )
              ],
            ).box.white.rounded.outerShadowMd.padding(const EdgeInsets.all(8.0)).make(),
            10.heightBox,
            Center(child: normalText(text: anyProblem, color: lightGrey)),
          ],
        ),
      ),
    );
  }
}